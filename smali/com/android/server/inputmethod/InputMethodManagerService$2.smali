.class public final Lcom/android/server/inputmethod/InputMethodManagerService$2;
.super Lcom/android/internal/inputmethod/IInputMethodSessionCallback$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

.field public final synthetic val$curMethod:Lcom/android/server/inputmethod/IInputMethodInvoker;

.field public final synthetic val$serverChannel:Landroid/view/InputChannel;

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/IInputMethodInvoker;Landroid/view/InputChannel;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$2;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$2;->val$curMethod:Lcom/android/server/inputmethod/IInputMethodInvoker;

    iput-object p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$2;->val$serverChannel:Landroid/view/InputChannel;

    iput p4, p0, Lcom/android/server/inputmethod/InputMethodManagerService$2;->val$userId:I

    invoke-direct {p0}, Lcom/android/internal/inputmethod/IInputMethodSessionCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final sessionCreated(Lcom/android/internal/inputmethod/IInputMethodSession;)V
    .locals 5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$2;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$2;->val$curMethod:Lcom/android/server/inputmethod/IInputMethodInvoker;

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService$2;->val$serverChannel:Landroid/view/InputChannel;

    iget p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$2;->val$userId:I

    invoke-virtual {v2, v3, p1, v4, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->onSessionCreated(Lcom/android/server/inputmethod/IInputMethodInvoker;Lcom/android/internal/inputmethod/IInputMethodSession;Landroid/view/InputChannel;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method
