.class public final synthetic Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/inputmethod/InputMethodManagerService;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iput p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda11;->f$1:I

    iput p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda11;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda11;->f$1:I

    iget p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda11;->f$2:I

    sget-boolean v2, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG_SEP:Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v2, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v2

    :try_start_0
    invoke-virtual {v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->resolveImeUserIdFromDisplayIdLocked(I)I

    move-result v3

    invoke-virtual {v0, p0, v1, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->showInputMethodPickerLocked(III)V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
