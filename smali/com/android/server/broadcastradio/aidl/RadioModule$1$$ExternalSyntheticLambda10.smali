.class public final synthetic Lcom/android/server/broadcastradio/aidl/RadioModule$1$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/broadcastradio/aidl/RadioModule$AidlCallbackRunnable;


# instance fields
.field public final synthetic f$0:Landroid/hardware/radio/ProgramSelector;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(ILandroid/hardware/radio/ProgramSelector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$1$$ExternalSyntheticLambda10;->f$0:Landroid/hardware/radio/ProgramSelector;

    iput p1, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$1$$ExternalSyntheticLambda10;->f$1:I

    return-void
.end method


# virtual methods
.method public final run(Landroid/hardware/radio/ITunerCallback;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$1$$ExternalSyntheticLambda10;->f$0:Landroid/hardware/radio/ProgramSelector;

    if-eqz v0, :cond_0

    invoke-static {p2, v0}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->programSelectorMeetsSdkVersionRequirement(ILandroid/hardware/radio/ProgramSelector;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p0, "BcRadioAidlSrv.module"

    const-string/jumbo p1, "onTuneFailed: cannot send program selector requiring higher target SDK version"

    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget p0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$1$$ExternalSyntheticLambda10;->f$1:I

    invoke-interface {p1, p0, v0}, Landroid/hardware/radio/ITunerCallback;->onTuneFailed(ILandroid/hardware/radio/ProgramSelector;)V

    return-void
.end method
