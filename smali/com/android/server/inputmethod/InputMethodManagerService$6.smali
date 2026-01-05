.class public final Lcom/android/server/inputmethod/InputMethodManagerService$6;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic val$isImeTraceEnabled:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$6;->val$isImeTraceEnabled:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/server/inputmethod/ClientState;

    iget-object p1, p1, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    iget-boolean p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$6;->val$isImeTraceEnabled:Z

    invoke-virtual {p1, p0}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->setImeTraceEnabled(Z)V

    return-void
.end method
