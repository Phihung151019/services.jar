.class public final Lcom/android/server/devicepolicy/EnforcingAdmin;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mAuthorities:Ljava/util/Set;

.field public final mComponentName:Landroid/content/ComponentName;

.field public final mIsRoleAuthority:Z

.field public final mIsSystemAuthority:Z

.field public final mPackageName:Ljava/lang/String;

.field public final mSystemEntity:Ljava/lang/String;

.field public final mUserId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mIsSystemAuthority:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mIsRoleAuthority:Z

    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mPackageName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mSystemEntity:Ljava/lang/String;

    iput v0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mUserId:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mComponentName:Landroid/content/ComponentName;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string/jumbo v1, "system:"

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iput-object v0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mAuthorities:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mIsRoleAuthority:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mIsSystemAuthority:Z

    iput-object p1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mPackageName:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mSystemEntity:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mUserId:I

    iput-object p1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mComponentName:Landroid/content/ComponentName;

    iput-object p1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mAuthorities:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/ComponentName;Ljava/util/Set;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mIsRoleAuthority:Z

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mIsSystemAuthority:Z

    iput-object p1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mPackageName:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mSystemEntity:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mComponentName:Landroid/content/ComponentName;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1, p3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mAuthorities:Ljava/util/Set;

    iput p4, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mUserId:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/ComponentName;Ljava/util/Set;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p5, 0x1

    iput-boolean p5, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mIsRoleAuthority:Z

    const/4 p5, 0x0

    iput-boolean p5, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mIsSystemAuthority:Z

    iput-object p1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mPackageName:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mSystemEntity:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mComponentName:Landroid/content/ComponentName;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1, p3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mAuthorities:Ljava/util/Set;

    iput p4, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mUserId:I

    return-void
.end method

.method public static createEnterpriseEnforcingAdmin(ILandroid/content/ComponentName;)Lcom/android/server/devicepolicy/EnforcingAdmin;
    .locals 3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/server/devicepolicy/EnforcingAdmin;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "enterprise"

    invoke-static {v2}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2, p0}, Lcom/android/server/devicepolicy/EnforcingAdmin;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Ljava/util/Set;I)V

    return-object v0
.end method

.method public static getRoleAuthoritiesOrDefault(ILjava/lang/String;)Ljava/util/Set;
    .locals 3

    invoke-static {p0, p1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getRoles(ILjava/lang/String;)Ljava/util/Set;

    move-result-object p0

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "role:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string/jumbo p0, "default"

    invoke-static {p0}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p1
.end method

.method public static getRoleAuthorityOf(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "role:"

    invoke-static {v0, p0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getRoles(ILjava/lang/String;)Ljava/util/Set;
    .locals 4

    const-class v0, Lcom/android/role/RoleManagerLocal;

    invoke-static {v0}, Lcom/android/server/LocalManagerRegistry;->getManager(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/role/RoleManagerLocal;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, p0}, Lcom/android/role/RoleManagerLocal;->getRolesAndHolders(I)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/devicepolicy/EnforcingAdmin;
    .locals 8

    const-string/jumbo v0, "package-name"

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "system-entity"

    invoke-interface {p0, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "is-role"

    invoke-interface {p0, v1, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    const-string/jumbo v4, "is-system"

    const/4 v5, 0x0

    invoke-interface {p0, v1, v4, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    const-string/jumbo v5, "authorities"

    invoke-interface {p0, v1, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "user-id"

    invoke-interface {p0, v1, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    const-string v7, "EnforcingAdmin"

    if-eqz v3, :cond_1

    if-nez v0, :cond_0

    const-string p0, "Error parsing EnforcingAdmin with RoleAuthority, packageName is null."

    invoke-static {v7, p0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    new-instance p0, Lcom/android/server/devicepolicy/EnforcingAdmin;

    invoke-direct {p0, v0, v6}, Lcom/android/server/devicepolicy/EnforcingAdmin;-><init>(Ljava/lang/String;I)V

    return-object p0

    :cond_1
    if-eqz v4, :cond_3

    if-nez v2, :cond_2

    const-string p0, "Error parsing EnforcingAdmin with SystemAuthority, systemEntity is null."

    invoke-static {v7, p0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_2
    new-instance p0, Lcom/android/server/devicepolicy/EnforcingAdmin;

    invoke-direct {p0, v2}, Lcom/android/server/devicepolicy/EnforcingAdmin;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_3
    if-eqz v0, :cond_6

    if-nez v5, :cond_4

    goto :goto_1

    :cond_4
    const-string/jumbo v2, "class-name"

    invoke-interface {p0, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v0, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string p0, ";"

    invoke-virtual {v5, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Set;->of([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    new-instance v2, Lcom/android/server/devicepolicy/EnforcingAdmin;

    invoke-direct {v2, v0, v1, p0, v6}, Lcom/android/server/devicepolicy/EnforcingAdmin;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Ljava/util/Set;I)V

    return-object v2

    :cond_6
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "Error parsing EnforcingAdmin, packageName is "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "null"

    if-nez v0, :cond_7

    move-object v0, v2

    :cond_7
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", and authorities is "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v5, :cond_8

    move-object v5, v2

    :cond_8
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/android/server/devicepolicy/EnforcingAdmin;

    if-eq v2, v1, :cond_1

    goto :goto_2

    :cond_1
    check-cast p1, Lcom/android/server/devicepolicy/EnforcingAdmin;

    iget-object v1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mPackageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/devicepolicy/EnforcingAdmin;->mPackageName:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mSystemEntity:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/devicepolicy/EnforcingAdmin;->mSystemEntity:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mComponentName:Landroid/content/ComponentName;

    iget-object v2, p1, Lcom/android/server/devicepolicy/EnforcingAdmin;->mComponentName:Landroid/content/ComponentName;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mIsRoleAuthority:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p1, Lcom/android/server/devicepolicy/EnforcingAdmin;->mIsRoleAuthority:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mIsSystemAuthority:Z

    iget-boolean v4, p1, Lcom/android/server/devicepolicy/EnforcingAdmin;->mIsSystemAuthority:Z

    if-ne v2, v4, :cond_3

    if-eqz v1, :cond_2

    if-eqz v3, :cond_2

    move p0, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getAuthorities()Ljava/util/Set;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getAuthorities()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p0

    :goto_0
    if-eqz p0, :cond_3

    :goto_1
    return v0

    :cond_3
    :goto_2
    const/4 p0, 0x0

    return p0
.end method

.method public final getAuthorities()Ljava/util/Set;
    .locals 2

    iget-object v0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mAuthorities:Ljava/util/Set;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mIsRoleAuthority:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mPackageName:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mUserId:I

    invoke-static {v1, v0}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getRoleAuthoritiesOrDefault(ILjava/lang/String;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mAuthorities:Ljava/util/Set;

    :cond_0
    iget-object p0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mAuthorities:Ljava/util/Set;

    return-object p0
.end method

.method public final getParcelableAdmin()Landroid/app/admin/EnforcingAdmin;
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mIsRoleAuthority:Z

    iget v1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mUserId:I

    iget-object v2, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {v1, v2}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getRoles(ILjava/lang/String;)Ljava/util/Set;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v0, Landroid/app/admin/UnknownAuthority;->UNKNOWN_AUTHORITY:Landroid/app/admin/UnknownAuthority;

    goto :goto_0

    :cond_0
    new-instance v3, Landroid/app/admin/RoleAuthority;

    invoke-direct {v3, v0}, Landroid/app/admin/RoleAuthority;-><init>(Ljava/util/Set;)V

    move-object v0, v3

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mAuthorities:Ljava/util/Set;

    const-string/jumbo v3, "enterprise"

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroid/app/admin/DpcAuthority;->DPC_AUTHORITY:Landroid/app/admin/DpcAuthority;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mAuthorities:Ljava/util/Set;

    const-string/jumbo v3, "device_admin"

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Landroid/app/admin/DeviceAdminAuthority;->DEVICE_ADMIN_AUTHORITY:Landroid/app/admin/DeviceAdminAuthority;

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mIsSystemAuthority:Z

    if-eqz v0, :cond_4

    new-instance v0, Landroid/app/admin/UnknownAuthority;

    iget-object v3, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mSystemEntity:Ljava/lang/String;

    invoke-direct {v0, v3}, Landroid/app/admin/UnknownAuthority;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    sget-object v0, Landroid/app/admin/UnknownAuthority;->UNKNOWN_AUTHORITY:Landroid/app/admin/UnknownAuthority;

    :goto_0
    new-instance v3, Landroid/app/admin/EnforcingAdmin;

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mComponentName:Landroid/content/ComponentName;

    invoke-direct {v3, v2, v0, v1, p0}, Landroid/app/admin/EnforcingAdmin;-><init>(Ljava/lang/String;Landroid/app/admin/Authority;Landroid/os/UserHandle;Landroid/content/ComponentName;)V

    return-object v3
.end method

.method public final hasAuthority(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getAuthorities()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mIsRoleAuthority:Z

    iget v1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mUserId:I

    iget-object v2, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mIsSystemAuthority:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mSystemEntity:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_1
    iget-object v0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mComponentName:Landroid/content/ComponentName;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move-object v2, v0

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getAuthorities()Ljava/util/Set;

    move-result-object p0

    filled-new-array {v2, v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 5

    const/4 v0, 0x0

    const-string/jumbo v1, "package-name"

    iget-object v2, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mPackageName:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v1, "is-role"

    iget-boolean v2, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mIsRoleAuthority:Z

    invoke-interface {p1, v0, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v1, "is-system"

    iget-boolean v3, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mIsSystemAuthority:Z

    invoke-interface {p1, v0, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v1, "user-id"

    iget v4, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mUserId:I

    invoke-interface {p1, v0, v1, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    if-eqz v3, :cond_0

    const-string/jumbo v1, "system-entity"

    iget-object v4, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mSystemEntity:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    if-nez v2, :cond_2

    if-nez v3, :cond_2

    iget-object v1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mComponentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_1

    const-string/jumbo v2, "class-name"

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v2, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1
    const-string v1, ";"

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getAuthorities()Ljava/util/Set;

    move-result-object p0

    invoke-static {v1, p0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "authorities"

    invoke-interface {p1, v0, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_2
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EnforcingAdmin { mPackageName= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mComponentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    const-string v1, ", mComponentName= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mAuthorities:Ljava/util/Set;

    if-eqz v1, :cond_1

    const-string v1, ", mAuthorities= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mAuthorities:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, ", mUserId= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mIsRoleAuthority= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mIsRoleAuthority:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsSystemAuthority= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mIsSystemAuthority:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mSystemEntity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mSystemEntity:Ljava/lang/String;

    const-string v1, " }"

    invoke-static {v0, p0, v1}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
