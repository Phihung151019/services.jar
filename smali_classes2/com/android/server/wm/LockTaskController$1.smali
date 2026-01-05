.class public final Lcom/android/server/wm/LockTaskController$1;
.super Lcom/android/internal/policy/IKeyguardDismissCallback$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/LockTaskController;

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/LockTaskController;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/LockTaskController$1;->this$0:Lcom/android/server/wm/LockTaskController;

    iput p2, p0, Lcom/android/server/wm/LockTaskController$1;->val$userId:I

    invoke-direct {p0}, Lcom/android/internal/policy/IKeyguardDismissCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismissCancelled()V
    .locals 1

    const-string p0, "ActivityTaskManager"

    const-string/jumbo v0, "setKeyguardState: dismiss cancelled"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onDismissError()V
    .locals 1

    const-string p0, "ActivityTaskManager"

    const-string/jumbo v0, "setKeyguardState: failed to dismiss keyguard"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onDismissSucceeded()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/LockTaskController$1;->this$0:Lcom/android/server/wm/LockTaskController;

    iget-object v0, v0, Lcom/android/server/wm/LockTaskController;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/server/wm/LockTaskController$1;->val$userId:I

    new-instance v2, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda5;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3, p0}, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda5;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
