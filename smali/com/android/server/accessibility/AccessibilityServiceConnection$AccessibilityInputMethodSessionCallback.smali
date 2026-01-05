.class public final Lcom/android/server/accessibility/AccessibilityServiceConnection$AccessibilityInputMethodSessionCallback;
.super Lcom/android/internal/inputmethod/IAccessibilityInputMethodSessionCallback$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mUserId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSessionCallback$Stub;-><init>()V

    iput p1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection$AccessibilityInputMethodSessionCallback;->mUserId:I

    return-void
.end method


# virtual methods
.method public final sessionCreated(Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;I)V
    .locals 5

    const-wide/16 v0, 0x20

    const-string v2, "ASC.sessionCreated"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->get()Lcom/android/server/inputmethod/InputMethodManagerInternal;

    move-result-object v4

    iget p0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection$AccessibilityInputMethodSessionCallback;->mUserId:I

    invoke-virtual {v4, p2, p1, p0}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->onSessionForAccessibilityCreated(ILcom/android/internal/inputmethod/IAccessibilityInputMethodSession;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method
