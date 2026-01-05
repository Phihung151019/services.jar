.class public final synthetic Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda30;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/hardware/SensorPrivacyManagerInternal$OnUserSensorPrivacyChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/audio/AudioService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda30;->f$0:Lcom/android/server/audio/AudioService;

    return-void
.end method


# virtual methods
.method public final onSensorPrivacyChanged(IZ)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda30;->f$0:Lcom/android/server/audio/AudioService;

    sget v0, Lcom/android/server/audio/AudioService;->BECOMING_NOISY_DELAY_MS:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/audio/AudioService;->getCurrentUserId()I

    move-result v0

    if-ne p1, v0, :cond_0

    iput-boolean p2, p0, Lcom/android/server/audio/AudioService;->mMicMuteFromPrivacyToggle:Z

    invoke-static {}, Lcom/android/server/audio/AudioService;->getCurrentUserId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->setMicrophoneMuteNoCallerCheck(I)V

    :cond_0
    return-void
.end method
