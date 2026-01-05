.class public final synthetic Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;

    iput-boolean p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl$$ExternalSyntheticLambda0;->f$1:Z

    iput p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;

    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl$$ExternalSyntheticLambda0;->f$1:Z

    iget p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl$$ExternalSyntheticLambda0;->f$2:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v2, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v2

    :try_start_0
    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    sget-boolean v3, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG_SEP:Z

    invoke-virtual {v0, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->resolveImeUserIdFromDisplayIdLocked(I)I

    move-result p0

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    iget v1, v1, Lcom/android/server/inputmethod/InputMethodBindingController;->mBackDisposition:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(III)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(I)V

    :goto_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
