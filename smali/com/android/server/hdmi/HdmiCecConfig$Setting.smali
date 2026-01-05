.class public final Lcom/android/server/hdmi/HdmiCecConfig$Setting;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mAllowedValues:Ljava/util/List;

.field public final mContext:Landroid/content/Context;

.field public mDefaultValue:Lcom/android/server/hdmi/HdmiCecConfig$Value;

.field public final mName:Ljava/lang/String;

.field public final mUserConfigurable:Z

.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiCecConfig;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecConfig;Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->this$0:Lcom/android/server/hdmi/HdmiCecConfig;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->mDefaultValue:Lcom/android/server/hdmi/HdmiCecConfig$Value;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->mAllowedValues:Ljava/util/List;

    iput-object p2, p0, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->mName:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->mUserConfigurable:Z

    return-void
.end method


# virtual methods
.method public final getDefaultValue()Lcom/android/server/hdmi/HdmiCecConfig$Value;
    .locals 3

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->mDefaultValue:Lcom/android/server/hdmi/HdmiCecConfig$Value;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/server/hdmi/HdmiCecConfig$VerificationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid CEC setup for \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->mName:Ljava/lang/String;

    const-string v2, "\' setting. Setting has no default value."

    invoke-static {v1, p0, v2}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiCecConfig$VerificationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getValueType()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getDefaultValue()Lcom/android/server/hdmi/HdmiCecConfig$Value;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecConfig$Value;->mStringValue:Ljava/lang/String;

    if-eqz p0, :cond_0

    const-string/jumbo p0, "string"

    return-object p0

    :cond_0
    const-string/jumbo p0, "int"

    return-object p0
.end method

.method public final registerValue(III)V
    .locals 1

    new-instance v0, Lcom/android/server/hdmi/HdmiCecConfig$Value;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/server/hdmi/HdmiCecConfig$Value;-><init>(Ljava/lang/Integer;)V

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(Lcom/android/server/hdmi/HdmiCecConfig$Value;II)V

    return-void
.end method

.method public final registerValue(IILjava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/android/server/hdmi/HdmiCecConfig$Value;

    invoke-direct {v0, p3}, Lcom/android/server/hdmi/HdmiCecConfig$Value;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(Lcom/android/server/hdmi/HdmiCecConfig$Value;II)V

    return-void
.end method

.method public final registerValue(Lcom/android/server/hdmi/HdmiCecConfig$Value;II)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->mAllowedValues:Ljava/util/List;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->mDefaultValue:Lcom/android/server/hdmi/HdmiCecConfig$Value;

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Failed to set \'"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' as a default for \'"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->mName:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\': Setting already has a default (\'"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->mDefaultValue:Lcom/android/server/hdmi/HdmiCecConfig$Value;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\')."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HdmiCecConfig"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->mDefaultValue:Lcom/android/server/hdmi/HdmiCecConfig$Value;

    :cond_1
    return-void
.end method
