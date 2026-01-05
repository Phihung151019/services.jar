.class public final Lcom/android/server/am/mars/filter/filter/ImportantRoleFilter;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/am/mars/filter/IFilter;


# instance fields
.field public mContext:Landroid/content/Context;

.field public mSystemGalleryHolderList:Landroid/util/ArrayMap;


# virtual methods
.method public final deInit()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/ImportantRoleFilter;->mSystemGalleryHolderList:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    return-void
.end method

.method public final filter(IIILjava/lang/String;)I
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/ImportantRoleFilter;->mSystemGalleryHolderList:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x16

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getSystemGalleryHolder(I)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/ImportantRoleFilter;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "role"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/role/RoleManager;

    const-string/jumbo v1, "android.app.role.SYSTEM_GALLERY"

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/role/RoleManager;->getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/ImportantRoleFilter;->mSystemGalleryHolderList:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/ImportantRoleFilter;->mSystemGalleryHolderList:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Exception "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "MARs:ImportantRoleFilter"

    invoke-static {p0, p1, v0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final init(Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/ImportantRoleFilter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/filter/filter/ImportantRoleFilter;->getSystemGalleryHolder(I)V

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/server/am/mars/filter/filter/ImportantRoleFilter;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "persona"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/knox/SemPersonaManager;

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxId(IZ)I

    move-result p1

    const/16 v0, 0x96

    if-lt p1, v0, :cond_0

    const/16 v0, 0xa0

    if-gt p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/filter/filter/ImportantRoleFilter;->getSystemGalleryHolder(I)V

    :cond_0
    return-void
.end method
