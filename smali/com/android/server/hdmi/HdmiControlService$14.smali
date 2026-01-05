.class public final Lcom/android/server/hdmi/HdmiControlService$14;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/hdmi/HdmiControlService;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/hdmi/HdmiControlService$14;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$14;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 3

    iget v0, p0, Lcom/android/server/hdmi/HdmiControlService$14;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$14;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    const-string/jumbo v1, "enable_numeric_soundbar_volume_ui_on_tv"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, v0, Lcom/android/server/hdmi/HdmiControlService;->mNumericSoundbarVolumeUiOnTvFeatureFlagEnabled:Z

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$14;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->checkAndUpdateAbsoluteVolumeBehavior()V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$14;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    const-string/jumbo v0, "transition_arc_to_earc_tx"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mTransitionFromArcToEarcTxEnabled:Z

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$14;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    const-string/jumbo v1, "enable_soundbar_mode"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, v0, Lcom/android/server/hdmi/HdmiControlService;->mSoundbarModeFeatureFlagEnabled:Z

    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$14;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    iget-object p1, p1, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecConfig:Lcom/android/server/hdmi/HdmiCecConfig;

    const-string/jumbo v0, "soundbar_mode"

    invoke-virtual {p1, v0}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x0

    if-ne p1, v2, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$14;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mSoundbarModeFeatureFlagEnabled:Z

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HdmiControlService;->setSoundbarMode(I)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$14;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    const-string/jumbo v1, "enable_earc_tx"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, v0, Lcom/android/server/hdmi/HdmiControlService;->mEarcTxFeatureFlagEnabled:Z

    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$14;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    iget-object p1, p1, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecConfig:Lcom/android/server/hdmi/HdmiCecConfig;

    const-string/jumbo v0, "earc_enabled"

    invoke-virtual {p1, v0}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x0

    if-ne p1, v2, :cond_2

    move p1, v2

    goto :goto_2

    :cond_2
    move p1, v0

    :goto_2
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$14;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcTxFeatureFlagEnabled:Z

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    move v2, v0

    :goto_3
    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HdmiControlService;->setEarcEnabled(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
