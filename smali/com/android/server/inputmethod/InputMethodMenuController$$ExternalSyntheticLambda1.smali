.class public final synthetic Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/inputmethod/InputMethodMenuController;

.field public final synthetic f$1:Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/inputmethod/InputMethodMenuController;Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/inputmethod/InputMethodMenuController;

    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;

    iput p3, p0, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda1;->f$2:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/inputmethod/InputMethodMenuController;

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;

    iget p0, p0, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda1;->f$2:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v1

    :try_start_0
    iget-object v2, p1, Lcom/android/server/inputmethod/InputMethodMenuController;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    if-eqz v2, :cond_4

    array-length v3, v2

    if-le v3, p2, :cond_4

    iget-object v3, p1, Lcom/android/server/inputmethod/InputMethodMenuController;->mSubtypeIndices:[I

    if-eqz v3, :cond_4

    array-length v4, v3

    if-gt v4, p2, :cond_0

    goto :goto_1

    :cond_0
    aget-object v2, v2, p2

    aget v3, v3, p2

    iput p2, v0, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;->mCheckedItem:I

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    if-eqz v2, :cond_3

    if-ltz v3, :cond_1

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result p2

    if-lt v3, p2, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_0
    const/4 v3, -0x1

    :cond_2
    iget-object p2, p1, Lcom/android/server/inputmethod/InputMethodMenuController;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p2, v3, v2, p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodLocked(IIILjava/lang/String;)V

    :cond_3
    invoke-virtual {p1, p0}, Lcom/android/server/inputmethod/InputMethodMenuController;->hideInputMethodMenuLocked(I)V

    monitor-exit v1

    return-void

    :cond_4
    :goto_1
    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
