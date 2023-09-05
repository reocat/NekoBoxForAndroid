package io.nekohasekai.sagernet.ui.profile

import android.os.Bundle
import androidx.preference.EditTextPreference
import androidx.preference.PreferenceCategory
import androidx.preference.PreferenceFragmentCompat
import androidx.preference.SwitchPreference
import io.nekohasekai.sagernet.Key
import io.nekohasekai.sagernet.R
import io.nekohasekai.sagernet.database.DataStore
import io.nekohasekai.sagernet.database.preference.EditTextPreferenceModifiers
import io.nekohasekai.sagernet.fmt.trojan_go.TrojanGoBean
import io.nekohasekai.sagernet.ktx.app
import moe.matsuri.nb4a.ui.SimpleMenuPreference

class TrojanGoSettingsActivity : ProfileSettingsActivity<TrojanGoBean>() {

    override fun createEntity() = TrojanGoBean()

    override fun TrojanGoBean.init() {
        DataStore.profileName = name
        DataStore.serverAddress = serverAddress
        DataStore.serverPort = serverPort
        DataStore.serverPassword = password
        DataStore.serverSNI = sni
        DataStore.serverAllowInsecure = allowInsecure
        DataStore.serverNetwork = type
        DataStore.serverHost = host
        DataStore.serverPath = path
        if (encryption.startsWith("ss;")) {
            DataStore.serverEncryption = "ss"
            DataStore.serverMethod = encryption.substringAfter(";").substringBefore(":")
            DataStore.serverPassword1 = encryption.substringAfter(":")
        } else {
            DataStore.serverEncryption = encryption
        }
        DataStore.serverALPN = alpn
        DataStore.utlsFingerprint = utlsFingerprint
        DataStore.profileCacheStore.putString("serverSecurity", serverSecurity)
        DataStore.profileCacheStore.putString("realityPubKey", realityPubKey)
        DataStore.profileCacheStore.putString("realityShortId", realityShortId)
        DataStore.profileCacheStore.putString("jlsPassword", jlsPassword)
        DataStore.profileCacheStore.putString("jlsRandom", jlsRandom)
    }

    override fun TrojanGoBean.serialize() {
        name = DataStore.profileName
        serverAddress = DataStore.serverAddress
        serverPort = DataStore.serverPort
        password = DataStore.serverPassword
        sni = DataStore.serverSNI
        allowInsecure = DataStore.serverAllowInsecure
        type = DataStore.serverNetwork
        host = DataStore.serverHost
        path = DataStore.serverPath
        encryption = when (val security = DataStore.serverEncryption) {
            "ss" -> {
                "ss;" + DataStore.serverMethod + ":" + DataStore.serverPassword1
            }
            else -> {
                security
            }
        }
        alpn = DataStore.serverALPN
        utlsFingerprint = DataStore.utlsFingerprint
        serverSecurity = DataStore.profileCacheStore.getString("serverSecurity")
        realityPubKey = DataStore.profileCacheStore.getString("realityPubKey")
        realityShortId = DataStore.profileCacheStore.getString("realityShortId")
        jlsPassword = DataStore.profileCacheStore.getString("jlsPassword")
        jlsRandom = DataStore.profileCacheStore.getString("jlsRandom")
    }

    lateinit var network: SimpleMenuPreference
    lateinit var encryprtion: SimpleMenuPreference
    lateinit var wsCategory: PreferenceCategory
    lateinit var ssCategory: PreferenceCategory
    lateinit var method: SimpleMenuPreference
    lateinit var security: SimpleMenuPreference
    lateinit var inseure: SwitchPreference
    lateinit var realityPubKey: EditTextPreference
    lateinit var realityShortId: EditTextPreference
    lateinit var jlsPassword: EditTextPreference
    lateinit var jlsRandom: EditTextPreference

    val trojanGoMethods = app.resources.getStringArray(R.array.trojan_go_methods)
    val trojanGoNetworks = app.resources.getStringArray(R.array.trojan_go_networks_value)
    val securities = app.resources.getStringArray(R.array.trojan_go_transport_layer_encryption_value)

    override fun PreferenceFragmentCompat.createPreferences(
        savedInstanceState: Bundle?,
        rootKey: String?,
    ) {
        addPreferencesFromResource(R.xml.trojan_go_preferences)
        findPreference<EditTextPreference>(Key.SERVER_PORT)!!.apply {
            setOnBindEditTextListener(EditTextPreferenceModifiers.Port)
        }
        findPreference<EditTextPreference>(Key.SERVER_PASSWORD)!!.apply {
            summaryProvider = PasswordSummaryProvider
        }
        findPreference<EditTextPreference>(Key.SERVER_PASSWORD1)!!.apply {
            summaryProvider = PasswordSummaryProvider
        }

        security = findPreference("serverSecurity")!!
        inseure = findPreference(Key.SERVER_ALLOW_INSECURE)!!
        realityPubKey = findPreference("realityPubKey")!!
        realityShortId = findPreference("realityShortId")!!
        jlsPassword = findPreference("jlsPassword")!!
        jlsRandom = findPreference("jlsRandom")!!

        if (security.value !in securities) {
            security.value = securities[0]
        }
        updateSecurity(security.value)
        security.setOnPreferenceChangeListener { _, newValue ->
            updateSecurity(newValue as String)
            true
        }

        wsCategory = findPreference(Key.SERVER_WS_CATEGORY)!!
        ssCategory = findPreference(Key.SERVER_SS_CATEGORY)!!
        method = findPreference(Key.SERVER_METHOD)!!

        network = findPreference(Key.SERVER_NETWORK)!!

        if (network.value !in trojanGoNetworks) {
            network.value = trojanGoNetworks[0]
        }

        updateNetwork(network.value)
        network.setOnPreferenceChangeListener { _, newValue ->
            updateNetwork(newValue as String)
            true
        }
        encryprtion = findPreference(Key.SERVER_ENCRYPTION)!!
        updateEncryption(encryprtion.value)
        encryprtion.setOnPreferenceChangeListener { _, newValue ->
            updateEncryption(newValue as String)
            true
        }
    }

    private fun updateNetwork(newNet: String) {
        when (newNet) {
            "ws" -> {
                wsCategory.isVisible = true
            }
            else -> {
                wsCategory.isVisible = false
            }
        }
    }

    private fun updateEncryption(encryption: String) {
        when (encryption) {
            "ss" -> {
                ssCategory.isVisible = true

                if (method.value !in trojanGoMethods) {
                    method.value = trojanGoMethods[0]
                }
            }
            else -> {
                ssCategory.isVisible = false
            }
        }
    }

    private fun updateSecurity(security: String) {
        when (security) {
            "reality" -> {
                inseure.isVisible = false
                jlsPassword.isVisible = false
                jlsRandom.isVisible = false
                realityPubKey.isVisible = true
                realityShortId.isVisible = true
            }
            "jls" -> {
                inseure.isVisible = false
                jlsPassword.isVisible = true
                jlsRandom.isVisible = true
                realityPubKey.isVisible = false
                realityShortId.isVisible = false
            }
            else -> {
                inseure.isVisible = true
                jlsPassword.isVisible = false
                jlsRandom.isVisible = false
                realityPubKey.isVisible = false
                realityShortId.isVisible = false
            }
        }
    }
}