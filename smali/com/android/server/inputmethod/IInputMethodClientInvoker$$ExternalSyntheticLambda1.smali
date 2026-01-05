.class public final synthetic Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

.field public final synthetic f$1:Lcom/android/internal/inputmethod/InputBindResult;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/inputmethod/IInputMethodClientInvoker;Lcom/android/internal/inputmethod/InputBindResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    iput-object p2, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda1;->f$1:Lcom/android/internal/inputmethod/InputBindResult;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda1;->f$1:Lcom/android/internal/inputmethod/InputBindResult;

    invoke-virtual {v0, p0}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->onBindMethodInternal(Lcom/android/internal/inputmethod/InputBindResult;)V

    return-void
.end method
