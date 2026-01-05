.class public final synthetic Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda18;->f$0:Z

    iput p1, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda18;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda18;->f$0:Z

    iget p0, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda18;->f$1:I

    sget v1, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->get()Lcom/android/server/inputmethod/InputMethodManagerInternal;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->setHasVisibleImeLayeringOverlay(IZ)V

    return-void
.end method
