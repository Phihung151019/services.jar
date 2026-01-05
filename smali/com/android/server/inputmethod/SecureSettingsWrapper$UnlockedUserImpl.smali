.class public Lcom/android/server/inputmethod/SecureSettingsWrapper$UnlockedUserImpl;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;


# instance fields
.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mUserId:I


# direct methods
.method public constructor <init>(ILandroid/content/ContentResolver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/inputmethod/SecureSettingsWrapper$UnlockedUserImpl;->mUserId:I

    iput-object p2, p0, Lcom/android/server/inputmethod/SecureSettingsWrapper$UnlockedUserImpl;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public getInt(ILjava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/inputmethod/SecureSettingsWrapper$UnlockedUserImpl;->mContentResolver:Landroid/content/ContentResolver;

    iget p0, p0, Lcom/android/server/inputmethod/SecureSettingsWrapper$UnlockedUserImpl;->mUserId:I

    invoke-static {v0, p2, p1, p0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/inputmethod/SecureSettingsWrapper$UnlockedUserImpl;->mContentResolver:Landroid/content/ContentResolver;

    iget p0, p0, Lcom/android/server/inputmethod/SecureSettingsWrapper$UnlockedUserImpl;->mUserId:I

    invoke-static {v0, p1, p0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    return-object p2
.end method

.method public putInt(ILjava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/android/server/inputmethod/SecureSettingsWrapper;->CLONE_TO_MANAGED_PROFILE:Landroid/util/ArraySet;

    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    iget v1, p0, Lcom/android/server/inputmethod/SecureSettingsWrapper$UnlockedUserImpl;->mUserId:I

    if-eqz v0, :cond_0

    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result v1

    :cond_0
    iget-object p0, p0, Lcom/android/server/inputmethod/SecureSettingsWrapper$UnlockedUserImpl;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p0, p2, p1, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/android/server/inputmethod/SecureSettingsWrapper;->CLONE_TO_MANAGED_PROFILE:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    iget v1, p0, Lcom/android/server/inputmethod/SecureSettingsWrapper$UnlockedUserImpl;->mUserId:I

    if-eqz v0, :cond_0

    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result v1

    :cond_0
    iget-object p0, p0, Lcom/android/server/inputmethod/SecureSettingsWrapper$UnlockedUserImpl;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p0, p1, p2, v1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method
