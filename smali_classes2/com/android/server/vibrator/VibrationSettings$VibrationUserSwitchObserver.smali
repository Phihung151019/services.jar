.class final Lcom/android/server/vibrator/VibrationSettings$VibrationUserSwitchObserver;
.super Landroid/app/SynchronousUserSwitchObserver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/vibrator/VibrationSettings;


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/VibrationSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/vibrator/VibrationSettings$VibrationUserSwitchObserver;->this$0:Lcom/android/server/vibrator/VibrationSettings;

    invoke-direct {p0}, Landroid/app/SynchronousUserSwitchObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUserSwitchComplete(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings$VibrationUserSwitchObserver;->this$0:Lcom/android/server/vibrator/VibrationSettings;

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationSettings;->update()V

    return-void
.end method

.method public final onUserSwitching(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings$VibrationUserSwitchObserver;->this$0:Lcom/android/server/vibrator/VibrationSettings;

    sget-object v1, Lcom/android/server/vibrator/VibrationSettings;->BACKGROUND_PROCESS_USAGE_ALLOWLIST:Ljava/util/Set;

    invoke-virtual {v0, p1}, Lcom/android/server/vibrator/VibrationSettings;->updateSettings(I)V

    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings$VibrationUserSwitchObserver;->this$0:Lcom/android/server/vibrator/VibrationSettings;

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationSettings;->notifyListeners()V

    return-void
.end method
