.class public final Lcom/android/server/inputmethod/SecureSettingsChangeCallback$1;
.super Landroid/database/ContentObserver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic val$callback:Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda12;

.field public final synthetic val$uriMapper:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/util/ArrayMap;Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda12;)V
    .locals 0

    iput-object p2, p0, Lcom/android/server/inputmethod/SecureSettingsChangeCallback$1;->val$uriMapper:Landroid/util/ArrayMap;

    iput-object p3, p0, Lcom/android/server/inputmethod/SecureSettingsChangeCallback$1;->val$callback:Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda12;

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(ZLjava/util/Collection;II)V
    .locals 1

    iget-object p1, p0, Lcom/android/server/inputmethod/SecureSettingsChangeCallback$1;->val$uriMapper:Landroid/util/ArrayMap;

    iget-object p0, p0, Lcom/android/server/inputmethod/SecureSettingsChangeCallback$1;->val$callback:Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda12;

    new-instance v0, Lcom/android/server/inputmethod/SecureSettingsChangeCallback$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p0, p3, p4}, Lcom/android/server/inputmethod/SecureSettingsChangeCallback$1$$ExternalSyntheticLambda0;-><init>(Landroid/util/ArrayMap;Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda12;II)V

    invoke-interface {p2, v0}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
