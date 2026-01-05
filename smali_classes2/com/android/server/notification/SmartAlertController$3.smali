.class public final Lcom/android/server/notification/SmartAlertController$3;
.super Ljava/lang/Thread;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/SmartAlertController;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/SmartAlertController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/notification/SmartAlertController$3;->this$0:Lcom/android/server/notification/SmartAlertController;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/notification/SmartAlertController$3;->this$0:Lcom/android/server/notification/SmartAlertController;

    iget-boolean v1, v0, Lcom/android/server/notification/SmartAlertController;->mMotionRegistered:Z

    const-string/jumbo v2, "SmartAlertController"

    if-nez v1, :cond_1

    iget-boolean v1, v0, Lcom/android/server/notification/SmartAlertController;->mMotionEnabled:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/server/notification/SmartAlertController;->mSmartAlertMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/android/server/notification/SmartAlertController;->mSmartAlertMotionListener:Lcom/android/server/notification/SmartAlertController$1;

    const/4 v3, 0x4

    invoke-virtual {v1, v0, v3}, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->registerListener(Lcom/samsung/android/gesture/SemMotionEventListener;I)V

    iget-object p0, p0, Lcom/android/server/notification/SmartAlertController$3;->this$0:Lcom/android/server/notification/SmartAlertController;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/notification/SmartAlertController;->mMotionRegistered:Z

    const-string/jumbo p0, "SmartAlert - registerListener"

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo p0, "SmartAlert - mSmartAlertMotionManager is null"

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string/jumbo p0, "SmartAlert - already registered or Setting disabled"

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
