package io.nekohasekai.sagernet.fmt.shadowsocks;

import androidx.annotation.NonNull;

import com.esotericsoftware.kryo.io.ByteBufferInput;
import com.esotericsoftware.kryo.io.ByteBufferOutput;

import org.jetbrains.annotations.NotNull;

import io.nekohasekai.sagernet.fmt.AbstractBean;
import io.nekohasekai.sagernet.fmt.KryoConverters;
import moe.matsuri.nb4a.utils.JavaUtil;

public class ShadowsocksBean extends AbstractBean {

    public String method;
    public String password;
    public String plugin;

    public Boolean sUoT;
    public Boolean reducedIvHeadEntropy;

    @Override
    public void initializeDefaultValues() {
        super.initializeDefaultValues();

        if (JavaUtil.isNullOrBlank(method)) method = "aes-256-gcm";
        if (method == null) method = "";
        if (password == null) password = "";
        if (plugin == null) plugin = "";
        if (sUoT == null) sUoT = false;
        if (reducedIvHeadEntropy == null) reducedIvHeadEntropy = false;
    }

    @Override
    public void serialize(ByteBufferOutput output) {
        output.writeInt(3);
        super.serialize(output);
        output.writeString(method);
        output.writeString(password);
        output.writeString(plugin);
        output.writeBoolean(sUoT);
        output.writeBoolean(reducedIvHeadEntropy);
    }

    @Override
    public void deserialize(ByteBufferInput input) {
        int version = input.readInt();
        super.deserialize(input);
        method = input.readString();
        password = input.readString();
        plugin = input.readString();
        sUoT = input.readBoolean();
        if (version >= 3) {
            reducedIvHeadEntropy = input.readBoolean();
        }
    }

    @NotNull
    @Override
    public ShadowsocksBean clone() {
        return KryoConverters.deserialize(new ShadowsocksBean(), KryoConverters.serialize(this));
    }

    public static final Creator<ShadowsocksBean> CREATOR = new CREATOR<ShadowsocksBean>() {
        @NonNull
        @Override
        public ShadowsocksBean newInstance() {
            return new ShadowsocksBean();
        }

        @Override
        public ShadowsocksBean[] newArray(int size) {
            return new ShadowsocksBean[size];
        }
    };
}
