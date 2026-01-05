.class public final synthetic Lcom/android/server/wm/MultiWindowPointerEventListener$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/MultiWindowPointerEventListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/MultiWindowPointerEventListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/MultiWindowPointerEventListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object p0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/MultiWindowPointerEventListener;

    const-string/jumbo v0, "MultiWindowPointerEventListener"

    const-string v1, "Hide Ime"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->get()Lcom/android/server/inputmethod/InputMethodManagerInternal;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    const/16 v1, 0x43

    invoke-virtual {v0, v1, p0}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->hideInputMethod(II)V

    return-void
.end method
