.class public final Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightListenerRecord;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mListener:Landroid/hardware/input/IKeyboardBacklightListener;

.field public final mPid:I

.field public final synthetic this$0:Lcom/android/server/input/KeyboardBacklightController;


# direct methods
.method public constructor <init>(Lcom/android/server/input/KeyboardBacklightController;ILandroid/hardware/input/IKeyboardBacklightListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightListenerRecord;->this$0:Lcom/android/server/input/KeyboardBacklightController;

    iput p2, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightListenerRecord;->mPid:I

    iput-object p3, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightListenerRecord;->mListener:Landroid/hardware/input/IKeyboardBacklightListener;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 4

    sget-boolean v0, Lcom/android/server/input/KeyboardBacklightController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "KbdBacklightController"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Keyboard backlight listener for pid "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightListenerRecord;->mPid:I

    const-string v3, " died."

    invoke-static {v2, v3, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightListenerRecord;->this$0:Lcom/android/server/input/KeyboardBacklightController;

    iget p0, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightListenerRecord;->mPid:I

    iget-object v1, v0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklightListenerRecords:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_0
    iget-object v0, v0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklightListenerRecords:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
