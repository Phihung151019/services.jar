.class public final synthetic Lcom/android/server/input/KeyGestureController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/hardware/input/InputManager$KeyGestureEventHandler;


# instance fields
.field public final synthetic f$0:Lcom/android/server/input/KeyGestureController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/input/KeyGestureController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/input/KeyGestureController$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/input/KeyGestureController;

    return-void
.end method


# virtual methods
.method public final handleKeyGestureEvent(Landroid/hardware/input/KeyGestureEvent;Landroid/os/IBinder;)V
    .locals 6

    iget-object p0, p0, Lcom/android/server/input/KeyGestureController$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/input/KeyGestureController;

    sget-boolean p2, Lcom/android/server/input/KeyGestureController;->DEBUG:Z

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/hardware/input/KeyGestureEvent;->getKeyGestureType()I

    move-result p2

    const/16 v0, 0x37

    if-ne p2, v0, :cond_1

    invoke-virtual {p1}, Landroid/hardware/input/KeyGestureEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    const/4 v0, 0x4

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/android/server/input/KeyGestureController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/android/server/input/KeyGestureController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    sget-object v1, Lcom/android/server/input/KeyGestureController;->mUserLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/input/KeyGestureController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "accessibility_shortcut_dialog_shown"

    iget v4, p0, Lcom/android/server/input/KeyGestureController;->mCurrentUserId:I

    const/4 v5, 0x0

    invoke-static {v2, v3, v5, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    iget-object v2, p0, Lcom/android/server/input/KeyGestureController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "skip_accessibility_shortcut_dialog_timeout_restriction"

    iget p0, p0, Lcom/android/server/input/KeyGestureController;->mCurrentUserId:I

    invoke-static {v2, v3, v5, p0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getAccessibilityShortcutKeyTimeout()J

    move-result-wide v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1, p2, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_0
    iget-object p0, p0, Lcom/android/server/input/KeyGestureController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void

    :cond_1
    const-string p0, "KeyGestureController"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Received a key gesture "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " that was not registered by this handler"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
