.class public final synthetic Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/inputmethod/ZeroJankProxy;

.field public final synthetic f$1:Lcom/android/internal/inputmethod/IInputMethodClient;

.field public final synthetic f$2:Landroid/os/IBinder;

.field public final synthetic f$3:Landroid/view/inputmethod/ImeTracker$Token;

.field public final synthetic f$4:I

.field public final synthetic f$5:Landroid/os/ResultReceiver;

.field public final synthetic f$6:I

.field public final synthetic f$7:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/inputmethod/ZeroJankProxy;Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/inputmethod/ZeroJankProxy;

    iput-object p2, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda2;->f$1:Lcom/android/internal/inputmethod/IInputMethodClient;

    iput-object p3, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda2;->f$2:Landroid/os/IBinder;

    iput-object p4, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda2;->f$3:Landroid/view/inputmethod/ImeTracker$Token;

    iput p5, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda2;->f$4:I

    iput-object p6, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda2;->f$5:Landroid/os/ResultReceiver;

    iput p7, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda2;->f$6:I

    iput-boolean p8, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda2;->f$7:Z

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 9

    iget-object v0, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/inputmethod/ZeroJankProxy;

    iget-object v2, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda2;->f$1:Lcom/android/internal/inputmethod/IInputMethodClient;

    iget-object v3, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda2;->f$2:Landroid/os/IBinder;

    iget-object v4, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda2;->f$3:Landroid/view/inputmethod/ImeTracker$Token;

    iget v5, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda2;->f$4:I

    iget-object v6, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda2;->f$5:Landroid/os/ResultReceiver;

    iget v7, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda2;->f$6:I

    iget-boolean v8, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda2;->f$7:Z

    iget-object p0, v0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    move-object v1, p0

    check-cast v1, Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideSoftInput(Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;IZ)Z

    return-void
.end method
