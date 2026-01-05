.class public final Lcom/android/server/input/KeyGestureController$KeyGestureHandlerRecord;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mKeyGestureHandler:Landroid/hardware/input/IKeyGestureHandler;

.field public final mPid:I

.field public final synthetic this$0:Lcom/android/server/input/KeyGestureController;


# direct methods
.method public constructor <init>(Lcom/android/server/input/KeyGestureController;ILandroid/hardware/input/IKeyGestureHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/input/KeyGestureController$KeyGestureHandlerRecord;->this$0:Lcom/android/server/input/KeyGestureController;

    iput p2, p0, Lcom/android/server/input/KeyGestureController$KeyGestureHandlerRecord;->mPid:I

    iput-object p3, p0, Lcom/android/server/input/KeyGestureController$KeyGestureHandlerRecord;->mKeyGestureHandler:Landroid/hardware/input/IKeyGestureHandler;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 4

    sget-boolean v0, Lcom/android/server/input/KeyGestureController;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Key gesture event handler for pid "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/input/KeyGestureController$KeyGestureHandlerRecord;->mPid:I

    const-string v2, " died."

    const-string v3, "KeyGestureController"

    invoke-static {v1, v2, v3, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController$KeyGestureHandlerRecord;->this$0:Lcom/android/server/input/KeyGestureController;

    iget p0, p0, Lcom/android/server/input/KeyGestureController$KeyGestureHandlerRecord;->mPid:I

    invoke-virtual {v0, p0}, Lcom/android/server/input/KeyGestureController;->onKeyGestureHandlerRemoved(I)V

    return-void
.end method
