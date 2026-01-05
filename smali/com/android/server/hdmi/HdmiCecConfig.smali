.class public Lcom/android/server/hdmi/HdmiCecConfig;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mLock:Ljava/lang/Object;

.field public final mSettingChangeListeners:Landroid/util/ArrayMap;

.field public final mSettings:Ljava/util/LinkedHashMap;

.field public final mStorageAdapter:Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;

    invoke-direct {v0, p1}, Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecConfig;-><init>(Landroid/content/Context;Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mSettingChangeListeners:Landroid/util/ArrayMap;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mSettings:Ljava/util/LinkedHashMap;

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mStorageAdapter:Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;

    const-string/jumbo p1, "hdmi_cec_enabled"

    const p2, 0x111007d

    invoke-virtual {p0, p2, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(ILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const/4 p2, 0x1

    const v1, 0x111007b

    const v2, 0x111007c

    invoke-virtual {p1, p2, v1, v2}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const/4 v1, 0x0

    const v2, 0x1110079

    const v3, 0x111007a

    invoke-virtual {p1, v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const-string/jumbo p1, "hdmi_cec_version"

    const v2, 0x1110082

    invoke-virtual {p0, v2, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(ILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const v2, 0x111007f

    const/4 v3, 0x5

    const v4, 0x111007e

    invoke-virtual {p1, v3, v4, v2}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const/4 v2, 0x6

    const v3, 0x1110080

    const v4, 0x1110081

    invoke-virtual {p1, v2, v3, v4}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const-string/jumbo p1, "routing_control"

    const v3, 0x1110104

    invoke-virtual {p0, v3, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(ILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const v3, 0x1110102

    const v4, 0x1110103

    invoke-virtual {p1, p2, v3, v4}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const v3, 0x1110100

    const v4, 0x1110101

    invoke-virtual {p1, v1, v3, v4}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const-string/jumbo p1, "soundbar_mode"

    const v3, 0x111010e

    invoke-virtual {p0, v3, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(ILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const v3, 0x111010c

    const v4, 0x111010d

    invoke-virtual {p1, p2, v3, v4}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const v3, 0x111010a

    const v4, 0x111010b

    invoke-virtual {p1, v1, v3, v4}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const-string/jumbo p1, "power_control_mode"

    const v3, 0x111008b

    invoke-virtual {p0, v3, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(ILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const v3, 0x111008a

    const-string/jumbo v4, "to_tv"

    const v5, 0x1110089

    invoke-virtual {p1, v5, v3, v4}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(IILjava/lang/String;)V

    const v3, 0x1110084

    const-string/jumbo v4, "broadcast"

    const v5, 0x1110083

    invoke-virtual {p1, v5, v3, v4}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(IILjava/lang/String;)V

    const-string/jumbo v3, "none"

    const v4, 0x1110085

    const v5, 0x1110086

    invoke-virtual {p1, v4, v5, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(IILjava/lang/String;)V

    const v4, 0x1110088

    const-string/jumbo v5, "to_tv_and_audio_system"

    const v6, 0x1110087

    invoke-virtual {p1, v6, v4, v5}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(IILjava/lang/String;)V

    const-string/jumbo p1, "power_state_change_on_active_source_lost"

    const v4, 0x1110090

    invoke-virtual {p0, v4, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(ILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const v4, 0x111008c

    const v5, 0x111008d

    invoke-virtual {p1, v4, v5, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(IILjava/lang/String;)V

    const v3, 0x111008f

    const-string/jumbo v4, "standby_now"

    const v5, 0x111008e

    invoke-virtual {p1, v5, v3, v4}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(IILjava/lang/String;)V

    const-string/jumbo p1, "system_audio_control"

    const v3, 0x1110113

    invoke-virtual {p0, v3, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(ILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const v3, 0x1110111

    const v4, 0x1110112

    invoke-virtual {p1, p2, v3, v4}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const v3, 0x111010f

    const v4, 0x1110110

    invoke-virtual {p1, v1, v3, v4}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const-string/jumbo p1, "system_audio_mode_muting"

    const v3, 0x1110118

    invoke-virtual {p0, v3, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(ILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const v3, 0x1110116

    const v4, 0x1110117

    invoke-virtual {p1, p2, v3, v4}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const v3, 0x1110114

    const v4, 0x1110115

    invoke-virtual {p1, v1, v3, v4}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const-string/jumbo p1, "volume_control_enabled"

    const v3, 0x1110127

    invoke-virtual {p0, v3, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(ILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const v3, 0x1110125

    const v4, 0x1110126

    invoke-virtual {p1, p2, v3, v4}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const v3, 0x1110123

    const v4, 0x1110124

    invoke-virtual {p1, v1, v3, v4}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const-string/jumbo p1, "tv_wake_on_one_touch_play"

    const v3, 0x1110122

    invoke-virtual {p0, v3, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(ILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const v3, 0x1110120

    const v4, 0x1110121

    invoke-virtual {p1, p2, v3, v4}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const v3, 0x111011e

    const v4, 0x111011f

    invoke-virtual {p1, v1, v3, v4}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const-string/jumbo p1, "tv_send_standby_on_sleep"

    const v3, 0x111011d

    invoke-virtual {p0, v3, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(ILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const v3, 0x111011b

    const v4, 0x111011c

    invoke-virtual {p1, p2, v3, v4}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const v3, 0x1110119

    const v4, 0x111011a

    invoke-virtual {p1, v1, v3, v4}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const-string/jumbo p1, "set_menu_language"

    const v3, 0x1110109

    invoke-virtual {p0, v3, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(ILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const v3, 0x1110107

    const v4, 0x1110108

    invoke-virtual {p1, p2, v3, v4}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const v3, 0x1110105

    const v4, 0x1110106

    invoke-virtual {p1, v1, v3, v4}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const-string/jumbo p1, "rc_profile_tv"

    const v3, 0x11100ff

    invoke-virtual {p0, v3, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(ILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const v3, 0x11100f7

    const v4, 0x11100f8

    invoke-virtual {p1, v1, v3, v4}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const v3, 0x11100fa

    const/4 v4, 0x2

    const v5, 0x11100f9

    invoke-virtual {p1, v4, v5, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const v3, 0x11100fd

    const v4, 0x11100fe

    invoke-virtual {p1, v2, v3, v4}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const v2, 0x11100fc

    const/16 v3, 0xa

    const v4, 0x11100fb

    invoke-virtual {p1, v3, v4, v2}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const v2, 0x11100f6

    const/16 v3, 0xe

    const v4, 0x11100f5

    invoke-virtual {p1, v3, v4, v2}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const-string/jumbo p1, "rc_profile_source_handles_root_menu"

    const v2, 0x11100ea

    invoke-virtual {p0, v2, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(ILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const v2, 0x11100e6

    const v3, 0x11100e7

    invoke-virtual {p1, p2, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const v2, 0x11100e8

    const v3, 0x11100e9

    invoke-virtual {p1, v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const-string/jumbo p1, "rc_profile_source_handles_setup_menu"

    const v2, 0x11100ef

    invoke-virtual {p0, v2, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(ILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const v2, 0x11100eb

    const v3, 0x11100ec

    invoke-virtual {p1, p2, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const v2, 0x11100ed

    const v3, 0x11100ee

    invoke-virtual {p1, v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const-string/jumbo p1, "rc_profile_source_handles_contents_menu"

    const v2, 0x11100e0

    invoke-virtual {p0, v2, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(ILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const v2, 0x11100dc

    const v3, 0x11100dd

    invoke-virtual {p1, p2, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const v2, 0x11100de

    const v3, 0x11100df

    invoke-virtual {p1, v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const-string/jumbo p1, "rc_profile_source_handles_top_menu"

    const v2, 0x11100f4

    invoke-virtual {p0, v2, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(ILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const v2, 0x11100f0

    const v3, 0x11100f1

    invoke-virtual {p1, p2, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const v2, 0x11100f2

    const v3, 0x11100f3

    invoke-virtual {p1, v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const-string/jumbo p1, "rc_profile_source_handles_media_context_sensitive_menu"

    const v2, 0x11100e5

    invoke-virtual {p0, v2, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(ILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const v2, 0x11100e1

    const v3, 0x11100e2

    invoke-virtual {p1, p2, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const v2, 0x11100e3

    const v3, 0x11100e4

    invoke-virtual {p1, v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const-string/jumbo p1, "query_sad_lpcm"

    const v2, 0x11100b8

    invoke-virtual {p0, v2, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(ILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const v2, 0x11100b6

    const v3, 0x11100b7

    invoke-virtual {p1, p2, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const v2, 0x11100b4

    const v3, 0x11100b5

    invoke-virtual {p1, v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const-string/jumbo p1, "query_sad_dd"

    const v2, 0x111009f

    invoke-virtual {p0, v2, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(ILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const v2, 0x111009d

    const v3, 0x111009e

    invoke-virtual {p1, p2, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const v2, 0x111009b

    const v3, 0x111009c

    invoke-virtual {p1, v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const-string/jumbo p1, "query_sad_mpeg1"

    const v2, 0x11100c7

    invoke-virtual {p0, v2, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(ILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const v2, 0x11100c5

    const v3, 0x11100c6

    invoke-virtual {p1, p2, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const v2, 0x11100c3

    const v3, 0x11100c4

    invoke-virtual {p1, v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const-string/jumbo p1, "query_sad_mp3"

    const v2, 0x11100c2

    invoke-virtual {p0, v2, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(ILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const v2, 0x11100c0

    const v3, 0x11100c1

    invoke-virtual {p1, p2, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const v2, 0x11100be

    const v3, 0x11100bf

    invoke-virtual {p1, v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const-string/jumbo p1, "query_sad_mpeg2"

    const v2, 0x11100cc

    invoke-virtual {p0, v2, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(ILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const v2, 0x11100ca

    const v3, 0x11100cb

    invoke-virtual {p1, p2, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const v2, 0x11100c8

    const v3, 0x11100c9

    invoke-virtual {p1, v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const-string/jumbo p1, "query_sad_aac"

    const v2, 0x1110095

    invoke-virtual {p0, v2, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(ILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const v2, 0x1110093

    const v3, 0x1110094

    invoke-virtual {p1, p2, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const v2, 0x1110091

    const v3, 0x1110092

    invoke-virtual {p1, v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const-string/jumbo p1, "query_sad_dts"

    const v2, 0x11100ae

    invoke-virtual {p0, v2, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(ILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const v2, 0x11100ac

    const v3, 0x11100ad

    invoke-virtual {p1, p2, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const v2, 0x11100aa

    const v3, 0x11100ab

    invoke-virtual {p1, v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const-string/jumbo p1, "query_sad_atrac"

    const v2, 0x111009a

    invoke-virtual {p0, v2, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(ILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const v2, 0x1110098

    const v3, 0x1110099

    invoke-virtual {p1, p2, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const v2, 0x1110096

    const v3, 0x1110097

    invoke-virtual {p1, v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const-string/jumbo p1, "query_sad_onebitaudio"

    const v2, 0x11100d1

    invoke-virtual {p0, v2, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(ILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const v2, 0x11100cf

    const v3, 0x11100d0

    invoke-virtual {p1, p2, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const v2, 0x11100cd

    const v3, 0x11100ce

    invoke-virtual {p1, v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const-string/jumbo p1, "query_sad_ddp"

    const v2, 0x11100a4

    invoke-virtual {p0, v2, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(ILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const v2, 0x11100a2

    const v3, 0x11100a3

    invoke-virtual {p1, p2, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const v2, 0x11100a0

    const v3, 0x11100a1

    invoke-virtual {p1, v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const-string/jumbo p1, "query_sad_dtshd"

    const v2, 0x11100b3

    invoke-virtual {p0, v2, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(ILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const v2, 0x11100b1

    const v3, 0x11100b2

    invoke-virtual {p1, p2, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const v2, 0x11100af

    const v3, 0x11100b0

    invoke-virtual {p1, v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const-string/jumbo p1, "query_sad_truehd"

    const v2, 0x11100d6

    invoke-virtual {p0, v2, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(ILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const v2, 0x11100d4

    const v3, 0x11100d5

    invoke-virtual {p1, p2, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const v2, 0x11100d2

    const v3, 0x11100d3

    invoke-virtual {p1, v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const-string/jumbo p1, "query_sad_dst"

    const v2, 0x11100a9

    invoke-virtual {p0, v2, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(ILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const v2, 0x11100a7

    const v3, 0x11100a8

    invoke-virtual {p1, p2, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const v2, 0x11100a5

    const v3, 0x11100a6

    invoke-virtual {p1, v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const-string/jumbo p1, "query_sad_wmapro"

    const v2, 0x11100db

    invoke-virtual {p0, v2, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(ILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const v2, 0x11100d9

    const v3, 0x11100da

    invoke-virtual {p1, p2, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const v2, 0x11100d7

    const v3, 0x11100d8

    invoke-virtual {p1, v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const-string/jumbo p1, "query_sad_max"

    const v2, 0x11100bd

    invoke-virtual {p0, v2, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(ILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const v2, 0x11100bb

    const v3, 0x11100bc

    invoke-virtual {p1, p2, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const v2, 0x11100b9

    const v3, 0x11100ba

    invoke-virtual {p1, v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const-string/jumbo p1, "earc_enabled"

    const v2, 0x1110167

    invoke-virtual {p0, v2, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(ILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p0

    const p1, 0x111016a

    const v2, 0x111016b

    invoke-virtual {p0, p2, p1, v2}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const p1, 0x1110168

    const p2, 0x1110169

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getDefaultValue()Lcom/android/server/hdmi/HdmiCecConfig$Value;

    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getStorage(Lcom/android/server/hdmi/HdmiCecConfig$Setting;)V

    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getStorageKey(Lcom/android/server/hdmi/HdmiCecConfig$Setting;)Ljava/lang/String;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static getStorage(Lcom/android/server/hdmi/HdmiCecConfig$Setting;)V
    .locals 3

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->mName:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string/jumbo v1, "system_audio_control"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v0, 0x21

    goto/16 :goto_0

    :sswitch_1
    const-string/jumbo v1, "tv_send_standby_on_sleep"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v0, 0x20

    goto/16 :goto_0

    :sswitch_2
    const-string/jumbo v1, "query_sad_mp3"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v0, 0x1f

    goto/16 :goto_0

    :sswitch_3
    const-string/jumbo v1, "query_sad_max"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v0, 0x1e

    goto/16 :goto_0

    :sswitch_4
    const-string/jumbo v1, "query_sad_dts"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v0, 0x1d

    goto/16 :goto_0

    :sswitch_5
    const-string/jumbo v1, "query_sad_dst"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v0, 0x1c

    goto/16 :goto_0

    :sswitch_6
    const-string/jumbo v1, "query_sad_ddp"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v0, 0x1b

    goto/16 :goto_0

    :sswitch_7
    const-string/jumbo v1, "query_sad_aac"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v0, 0x1a

    goto/16 :goto_0

    :sswitch_8
    const-string/jumbo v1, "tv_wake_on_one_touch_play"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v0, 0x19

    goto/16 :goto_0

    :sswitch_9
    const-string/jumbo v1, "query_sad_dd"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v0, 0x18

    goto/16 :goto_0

    :sswitch_a
    const-string/jumbo v1, "query_sad_onebitaudio"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v0, 0x17

    goto/16 :goto_0

    :sswitch_b
    const-string/jumbo v1, "rc_profile_tv"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v0, 0x16

    goto/16 :goto_0

    :sswitch_c
    const-string/jumbo v1, "hdmi_cec_enabled"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v0, 0x15

    goto/16 :goto_0

    :sswitch_d
    const-string/jumbo v1, "volume_control_enabled"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v0, 0x14

    goto/16 :goto_0

    :sswitch_e
    const-string/jumbo v1, "soundbar_mode"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v0, 0x13

    goto/16 :goto_0

    :sswitch_f
    const-string/jumbo v1, "power_control_mode"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v0, 0x12

    goto/16 :goto_0

    :sswitch_10
    const-string/jumbo v1, "power_state_change_on_active_source_lost"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v0, 0x11

    goto/16 :goto_0

    :sswitch_11
    const-string/jumbo v1, "rc_profile_source_handles_setup_menu"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v0, 0x10

    goto/16 :goto_0

    :sswitch_12
    const-string/jumbo v1, "query_sad_lpcm"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v0, 0xf

    goto/16 :goto_0

    :sswitch_13
    const-string/jumbo v1, "routing_control"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v0, 0xe

    goto/16 :goto_0

    :sswitch_14
    const-string/jumbo v1, "query_sad_wmapro"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v0, 0xd

    goto/16 :goto_0

    :sswitch_15
    const-string/jumbo v1, "rc_profile_source_handles_contents_menu"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v0, 0xc

    goto/16 :goto_0

    :sswitch_16
    const-string/jumbo v1, "query_sad_truehd"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v0, 0xb

    goto/16 :goto_0

    :sswitch_17
    const-string/jumbo v1, "earc_enabled"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v0, 0xa

    goto/16 :goto_0

    :sswitch_18
    const-string/jumbo v1, "query_sad_mpeg2"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    goto/16 :goto_0

    :cond_18
    const/16 v0, 0x9

    goto/16 :goto_0

    :sswitch_19
    const-string/jumbo v1, "query_sad_mpeg1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    goto/16 :goto_0

    :cond_19
    const/16 v0, 0x8

    goto/16 :goto_0

    :sswitch_1a
    const-string/jumbo v1, "query_sad_dtshd"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    goto :goto_0

    :cond_1a
    const/4 v0, 0x7

    goto :goto_0

    :sswitch_1b
    const-string/jumbo v1, "query_sad_atrac"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    goto :goto_0

    :cond_1b
    const/4 v0, 0x6

    goto :goto_0

    :sswitch_1c
    const-string/jumbo v1, "rc_profile_source_handles_root_menu"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    goto :goto_0

    :cond_1c
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_1d
    const-string/jumbo v1, "rc_profile_source_handles_top_menu"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    goto :goto_0

    :cond_1d
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_1e
    const-string/jumbo v1, "rc_profile_source_handles_media_context_sensitive_menu"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    goto :goto_0

    :cond_1e
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_1f
    const-string/jumbo v1, "set_menu_language"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    goto :goto_0

    :cond_1f
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_20
    const-string/jumbo v1, "system_audio_mode_muting"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    goto :goto_0

    :cond_20
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_21
    const-string/jumbo v1, "hdmi_cec_version"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    goto :goto_0

    :cond_21
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/android/server/hdmi/HdmiCecConfig$VerificationException;

    const-string v1, "Invalid CEC setting \'"

    const-string v2, "\' storage."

    invoke-static {v1, p0, v2}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiCecConfig$VerificationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7b89074d -> :sswitch_21
        -0x6a9ec647 -> :sswitch_20
        -0x607d7ae5 -> :sswitch_1f
        -0x4c082dd9 -> :sswitch_1e
        -0x4ab99283 -> :sswitch_1d
        -0x46d3da58 -> :sswitch_1c
        -0x44f9855f -> :sswitch_1b
        -0x44cf3a41 -> :sswitch_1a
        -0x44526d14 -> :sswitch_19
        -0x44526d13 -> :sswitch_18
        -0x40778731 -> :sswitch_17
        -0x39e5d496 -> :sswitch_16
        -0x36427790 -> :sswitch_15
        -0x3516ad1e -> :sswitch_14
        -0x1893b91c -> :sswitch_13
        -0x12b8cab2 -> :sswitch_12
        -0x117d9fab -> :sswitch_11
        -0xd196d78 -> :sswitch_10
        -0x1832fc1 -> :sswitch_f
        0x118545e -> :sswitch_e
        0x45cb33a -> :sswitch_d
        0xf91671c -> :sswitch_c
        0x2f314ba6 -> :sswitch_b
        0x2fa40eef -> :sswitch_a
        0x5e0410e0 -> :sswitch_9
        0x611b5e8f -> :sswitch_8
        0x627dffe3 -> :sswitch_7
        0x627e0b90 -> :sswitch_6
        0x627e0d65 -> :sswitch_5
        0x627e0d83 -> :sswitch_4
        0x627e2d04 -> :sswitch_3
        0x627e2e90 -> :sswitch_2
        0x7a8663a3 -> :sswitch_1
        0x7e41b7e4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getStorageKey(Lcom/android/server/hdmi/HdmiCecConfig$Setting;)Ljava/lang/String;
    .locals 3

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->mName:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string/jumbo v1, "system_audio_control"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v0, 0x21

    goto/16 :goto_0

    :sswitch_1
    const-string/jumbo v1, "tv_send_standby_on_sleep"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v0, 0x20

    goto/16 :goto_0

    :sswitch_2
    const-string/jumbo v1, "query_sad_mp3"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v0, 0x1f

    goto/16 :goto_0

    :sswitch_3
    const-string/jumbo v1, "query_sad_max"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v0, 0x1e

    goto/16 :goto_0

    :sswitch_4
    const-string/jumbo v1, "query_sad_dts"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v0, 0x1d

    goto/16 :goto_0

    :sswitch_5
    const-string/jumbo v1, "query_sad_dst"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v0, 0x1c

    goto/16 :goto_0

    :sswitch_6
    const-string/jumbo v1, "query_sad_ddp"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v0, 0x1b

    goto/16 :goto_0

    :sswitch_7
    const-string/jumbo v1, "query_sad_aac"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v0, 0x1a

    goto/16 :goto_0

    :sswitch_8
    const-string/jumbo v1, "tv_wake_on_one_touch_play"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v0, 0x19

    goto/16 :goto_0

    :sswitch_9
    const-string/jumbo v1, "query_sad_dd"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v0, 0x18

    goto/16 :goto_0

    :sswitch_a
    const-string/jumbo v1, "query_sad_onebitaudio"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v0, 0x17

    goto/16 :goto_0

    :sswitch_b
    const-string/jumbo v1, "rc_profile_tv"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v0, 0x16

    goto/16 :goto_0

    :sswitch_c
    const-string/jumbo v1, "hdmi_cec_enabled"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v0, 0x15

    goto/16 :goto_0

    :sswitch_d
    const-string/jumbo v1, "volume_control_enabled"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v0, 0x14

    goto/16 :goto_0

    :sswitch_e
    const-string/jumbo v1, "soundbar_mode"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v0, 0x13

    goto/16 :goto_0

    :sswitch_f
    const-string/jumbo v1, "power_control_mode"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v0, 0x12

    goto/16 :goto_0

    :sswitch_10
    const-string/jumbo v1, "power_state_change_on_active_source_lost"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v0, 0x11

    goto/16 :goto_0

    :sswitch_11
    const-string/jumbo v1, "rc_profile_source_handles_setup_menu"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v0, 0x10

    goto/16 :goto_0

    :sswitch_12
    const-string/jumbo v1, "query_sad_lpcm"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v0, 0xf

    goto/16 :goto_0

    :sswitch_13
    const-string/jumbo v1, "routing_control"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v0, 0xe

    goto/16 :goto_0

    :sswitch_14
    const-string/jumbo v1, "query_sad_wmapro"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v0, 0xd

    goto/16 :goto_0

    :sswitch_15
    const-string/jumbo v1, "rc_profile_source_handles_contents_menu"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v0, 0xc

    goto/16 :goto_0

    :sswitch_16
    const-string/jumbo v1, "query_sad_truehd"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v0, 0xb

    goto/16 :goto_0

    :sswitch_17
    const-string/jumbo v1, "earc_enabled"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v0, 0xa

    goto/16 :goto_0

    :sswitch_18
    const-string/jumbo v1, "query_sad_mpeg2"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    goto/16 :goto_0

    :cond_18
    const/16 v0, 0x9

    goto/16 :goto_0

    :sswitch_19
    const-string/jumbo v1, "query_sad_mpeg1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    goto/16 :goto_0

    :cond_19
    const/16 v0, 0x8

    goto/16 :goto_0

    :sswitch_1a
    const-string/jumbo v1, "query_sad_dtshd"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    goto :goto_0

    :cond_1a
    const/4 v0, 0x7

    goto :goto_0

    :sswitch_1b
    const-string/jumbo v1, "query_sad_atrac"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    goto :goto_0

    :cond_1b
    const/4 v0, 0x6

    goto :goto_0

    :sswitch_1c
    const-string/jumbo v1, "rc_profile_source_handles_root_menu"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    goto :goto_0

    :cond_1c
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_1d
    const-string/jumbo v1, "rc_profile_source_handles_top_menu"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    goto :goto_0

    :cond_1d
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_1e
    const-string/jumbo v1, "rc_profile_source_handles_media_context_sensitive_menu"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    goto :goto_0

    :cond_1e
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_1f
    const-string/jumbo v1, "set_menu_language"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    goto :goto_0

    :cond_1f
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_20
    const-string/jumbo v1, "system_audio_mode_muting"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    goto :goto_0

    :cond_20
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_21
    const-string/jumbo v1, "hdmi_cec_version"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    goto :goto_0

    :cond_21
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/android/server/hdmi/HdmiCecConfig$VerificationException;

    const-string v1, "Invalid CEC setting \'"

    const-string v2, "\' storage key."

    invoke-static {v1, p0, v2}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiCecConfig$VerificationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x7b89074d -> :sswitch_21
        -0x6a9ec647 -> :sswitch_20
        -0x607d7ae5 -> :sswitch_1f
        -0x4c082dd9 -> :sswitch_1e
        -0x4ab99283 -> :sswitch_1d
        -0x46d3da58 -> :sswitch_1c
        -0x44f9855f -> :sswitch_1b
        -0x44cf3a41 -> :sswitch_1a
        -0x44526d14 -> :sswitch_19
        -0x44526d13 -> :sswitch_18
        -0x40778731 -> :sswitch_17
        -0x39e5d496 -> :sswitch_16
        -0x36427790 -> :sswitch_15
        -0x3516ad1e -> :sswitch_14
        -0x1893b91c -> :sswitch_13
        -0x12b8cab2 -> :sswitch_12
        -0x117d9fab -> :sswitch_11
        -0xd196d78 -> :sswitch_10
        -0x1832fc1 -> :sswitch_f
        0x118545e -> :sswitch_e
        0x45cb33a -> :sswitch_d
        0xf91671c -> :sswitch_c
        0x2f314ba6 -> :sswitch_b
        0x2fa40eef -> :sswitch_a
        0x5e0410e0 -> :sswitch_9
        0x611b5e8f -> :sswitch_8
        0x627dffe3 -> :sswitch_7
        0x627e0b90 -> :sswitch_6
        0x627e0d65 -> :sswitch_5
        0x627e0d83 -> :sswitch_4
        0x627e2d04 -> :sswitch_3
        0x627e2e90 -> :sswitch_2
        0x7a8663a3 -> :sswitch_1
        0x7e41b7e4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final getAllowedIntValues(Ljava/lang/String;)Ljava/util/List;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getSetting(Ljava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p0

    const-string/jumbo v0, "Setting \'"

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getValueType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "int"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->mAllowedValues:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/android/server/hdmi/HdmiCecConfig$Value;

    iget-object v2, v2, Lcom/android/server/hdmi/HdmiCecConfig$Value;->mIntValue:Ljava/lang/Integer;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\' is not a string-type setting."

    invoke-static {v0, p1, v1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\' does not exist."

    invoke-static {v0, p1, v1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getAllowedStringValues(Ljava/lang/String;)Ljava/util/List;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getSetting(Ljava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p0

    const-string/jumbo v0, "Setting \'"

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getValueType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "string"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->mAllowedValues:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/android/server/hdmi/HdmiCecConfig$Value;

    iget-object v2, v2, Lcom/android/server/hdmi/HdmiCecConfig$Value;->mStringValue:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\' is not a string-type setting."

    invoke-static {v0, p1, v1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\' does not exist."

    invoke-static {v0, p1, v1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getIntValue(Ljava/lang/String;)I
    .locals 4

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getSetting(Ljava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object v0

    const-string/jumbo v1, "Setting \'"

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getValueType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "int"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "Getting CEC setting value \'"

    const-string v2, "\'."

    invoke-static {v1, p1, v2}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getDefaultValue()Lcom/android/server/hdmi/HdmiCecConfig$Value;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/hdmi/HdmiCecConfig$Value;->mIntValue:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->retrieveValue(Lcom/android/server/hdmi/HdmiCecConfig$Setting;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "\' is not a int-type setting."

    invoke-static {v1, p1, v0}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "\' does not exist."

    invoke-static {v1, p1, v0}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getSetting(Ljava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;
    .locals 1

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mSettings:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mSettings:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getStringValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getSetting(Ljava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object v0

    const-string/jumbo v1, "Setting \'"

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getValueType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "string"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "Getting CEC setting value \'"

    const-string v2, "\'."

    invoke-static {v1, p1, v2}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getDefaultValue()Lcom/android/server/hdmi/HdmiCecConfig$Value;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/hdmi/HdmiCecConfig$Value;->mStringValue:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->retrieveValue(Lcom/android/server/hdmi/HdmiCecConfig$Setting;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "\' is not a string-type setting."

    invoke-static {v1, p1, v0}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "\' does not exist."

    invoke-static {v1, p1, v0}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getUserSettings()Ljava/util/List;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mSettings:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    iget-boolean v2, v1, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->mUserConfigurable:Z

    if-eqz v2, :cond_0

    iget-object v1, v1, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final registerChangeListener(Ljava/lang/String;Lcom/android/server/hdmi/HdmiControlService$2;Ljava/util/concurrent/Executor;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getSetting(Ljava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecConfig;->getStorage(Lcom/android/server/hdmi/HdmiCecConfig$Setting;)V

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mSettingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mSettingChangeListeners:Landroid/util/ArrayMap;

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {p1, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mSettingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    invoke-virtual {p0, p2, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "Setting \'"

    const-string p3, "\' does not exist."

    invoke-static {p2, p1, p3}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final registerSetting(ILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;
    .locals 2

    new-instance v0, Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p2, p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;-><init>(Lcom/android/server/hdmi/HdmiCecConfig;Landroid/content/Context;Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mSettings:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final removeChangeListener(Lcom/android/server/hdmi/HdmiControlService$2;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->getSetting(Ljava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mSettingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {p2, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mSettingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {p2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mSettingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "Setting \'"

    const-string v0, "\' does not exist."

    invoke-static {p1, p2, v0}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final retrieveValue(Lcom/android/server/hdmi/HdmiCecConfig$Setting;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getStorage(Lcom/android/server/hdmi/HdmiCecConfig$Setting;)V

    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getStorageKey(Lcom/android/server/hdmi/HdmiCecConfig$Setting;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "Reading \'"

    const-string v1, "\' shared preference."

    invoke-static {v0, p1, v1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mStorageAdapter:Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final setIntValue(ILjava/lang/String;)V
    .locals 5

    invoke-virtual {p0, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->getSetting(Ljava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object v0

    const-string/jumbo v1, "Setting \'"

    if-eqz v0, :cond_3

    iget-boolean v2, v0, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->mUserConfigurable:Z

    const-string/jumbo v3, "Updating CEC setting \'"

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getValueType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "int"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->getAllowedIntValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "\'."

    if-eqz v1, :cond_0

    const-string v1, "\' to \'"

    invoke-static {p1, v3, p2, v1, v2}, Lcom/android/server/AppStateTrackerImpl$MyHandler$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->storeValue(Lcom/android/server/hdmi/HdmiCecConfig$Setting;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid CEC setting \'"

    const-string v1, "\' value: \'"

    invoke-static {p1, v0, p2, v1, v2}, Lcom/android/server/AppStateTrackerImpl$MyHandler$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\' is not a int-type setting."

    invoke-static {v1, p2, p1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\' prohibited."

    invoke-static {v3, p2, p1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\' does not exist."

    invoke-static {v1, p2, p1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setStringValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getSetting(Ljava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object v0

    const-string/jumbo v1, "Setting \'"

    if-eqz v0, :cond_3

    iget-boolean v2, v0, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->mUserConfigurable:Z

    const-string/jumbo v3, "Updating CEC setting \'"

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getValueType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "string"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getAllowedStringValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "\'."

    if-eqz v1, :cond_0

    const-string v1, "\' to \'"

    invoke-static {v3, p1, v1, p2, v2}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->storeValue(Lcom/android/server/hdmi/HdmiCecConfig$Setting;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid CEC setting \'"

    const-string v1, "\' value: \'"

    invoke-static {v0, p1, v1, p2, v2}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "\' is not a string-type setting."

    invoke-static {v1, p1, p2}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "\' prohibited."

    invoke-static {v3, p1, p2}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "\' does not exist."

    invoke-static {v1, p1, p2}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final storeValue(Lcom/android/server/hdmi/HdmiCecConfig$Setting;Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getStorage(Lcom/android/server/hdmi/HdmiCecConfig$Setting;)V

    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getStorageKey(Lcom/android/server/hdmi/HdmiCecConfig$Setting;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Setting \'"

    const-string v2, "\' shared pref."

    invoke-static {v1, v0, v2}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mStorageAdapter:Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;

    iget-object v1, v1, Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p2, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mSettingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    if-nez p0, :cond_0

    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiControlService$2;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/server/hdmi/HdmiCecConfig$1;

    invoke-direct {v2, v1, p1}, Lcom/android/server/hdmi/HdmiCecConfig$1;-><init>(Lcom/android/server/hdmi/HdmiControlService$2;Lcom/android/server/hdmi/HdmiCecConfig$Setting;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    monitor-exit p2

    return-void

    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
