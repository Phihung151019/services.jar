.class public abstract Lcom/android/server/AccessibilityManagerInternal;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final NOP:Lcom/android/server/AccessibilityManagerInternal$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/AccessibilityManagerInternal$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/AccessibilityManagerInternal;->NOP:Lcom/android/server/AccessibilityManagerInternal$1;

    return-void
.end method

.method public static get()Lcom/android/server/AccessibilityManagerInternal;
    .locals 1

    const-class v0, Lcom/android/server/AccessibilityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AccessibilityManagerInternal;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lcom/android/server/AccessibilityManagerInternal;->NOP:Lcom/android/server/AccessibilityManagerInternal$1;

    return-object v0
.end method


# virtual methods
.method public abstract bindInput()V
.end method

.method public abstract createImeSession(Landroid/util/ArraySet;)V
.end method

.method public abstract isTouchExplorationEnabled(I)Z
.end method

.method public abstract performSystemAction()V
.end method

.method public abstract setImeSessionEnabled(Landroid/util/SparseArray;Z)V
.end method

.method public abstract startInput(Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;Z)V
.end method

.method public abstract unbindInput()V
.end method
