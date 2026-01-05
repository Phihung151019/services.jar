.class public final synthetic Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda2;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lcom/android/server/inputmethod/ClientState;

    sget-boolean p0, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG_SEP:Z

    iget-object p0, p1, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->setImeTraceEnabled(Z)V

    return-void

    :pswitch_0
    check-cast p1, Lcom/android/server/inputmethod/ClientState;

    sget-boolean p0, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG_SEP:Z

    iget-object p0, p1, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->setImeTraceEnabled(Z)V

    return-void

    :pswitch_1
    if-nez p1, :cond_0

    sget-boolean p0, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG_SEP:Z

    const/4 p0, 0x0

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
