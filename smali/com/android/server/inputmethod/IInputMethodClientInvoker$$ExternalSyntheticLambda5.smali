.class public final synthetic Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

.field public final synthetic f$1:Lcom/android/internal/inputmethod/InputBindResult;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/inputmethod/IInputMethodClientInvoker;Lcom/android/internal/inputmethod/InputBindResult;II)V
    .locals 0

    iput p4, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda5;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    iput-object p2, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda5;->f$1:Lcom/android/internal/inputmethod/InputBindResult;

    iput p3, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda5;->f$2:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda5;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    iget-object v1, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda5;->f$1:Lcom/android/internal/inputmethod/InputBindResult;

    iget p0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda5;->f$2:I

    invoke-virtual {v0, v1, p0}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->onBindAccessibilityServiceInternal(Lcom/android/internal/inputmethod/InputBindResult;I)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    iget-object v1, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda5;->f$1:Lcom/android/internal/inputmethod/InputBindResult;

    iget p0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda5;->f$2:I

    invoke-virtual {v0, v1, p0}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->onStartInputResultInternal(Lcom/android/internal/inputmethod/InputBindResult;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
