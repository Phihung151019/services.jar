.class public final synthetic Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/IntFunction;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/inputmethod/InputMethodManagerService;


# direct methods
.method public synthetic constructor <init>(ILcom/android/server/inputmethod/InputMethodManagerService;)V
    .locals 0

    iput p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda6;->$r8$classId:I

    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 8

    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda6;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    sget-boolean p0, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG_SEP:Z

    new-instance v1, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    const-class p0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Lcom/android/server/pm/UserManagerInternal;

    const-class p0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/WindowManagerInternal;)V

    new-instance v6, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    move v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/pm/UserManagerInternal;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/inputmethod/ImeVisibilityStateComputer$$ExternalSyntheticLambda0;Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;I)V

    return-object v1

    :pswitch_0
    move v7, p1

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    sget-boolean p1, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG_SEP:Z

    new-instance p1, Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-direct {p1, v7, p0}, Lcom/android/server/inputmethod/InputMethodBindingController;-><init>(ILcom/android/server/inputmethod/InputMethodManagerService;)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
