.class public final Lcom/android/server/devicepolicy/PackageSuspender;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mExemptedPackages:Ljava/util/List;

.field public final mPackageManager:Landroid/content/pm/PackageManagerInternal;

.field public final mSuspendedPackageAfter:Ljava/util/Set;

.field public final mUserId:I


# direct methods
.method public constructor <init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/List;Landroid/content/pm/PackageManagerInternal;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    :goto_0
    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    sget-object p2, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    :goto_1
    iput-object p2, p0, Lcom/android/server/devicepolicy/PackageSuspender;->mSuspendedPackageAfter:Ljava/util/Set;

    iput-object p3, p0, Lcom/android/server/devicepolicy/PackageSuspender;->mExemptedPackages:Ljava/util/List;

    iput-object p4, p0, Lcom/android/server/devicepolicy/PackageSuspender;->mPackageManager:Landroid/content/pm/PackageManagerInternal;

    iput p5, p0, Lcom/android/server/devicepolicy/PackageSuspender;->mUserId:I

    return-void
.end method


# virtual methods
.method public final suspend(Ljava/util/Set;)[Ljava/lang/String;
    .locals 4

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    new-instance v1, Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/server/devicepolicy/PackageSuspender;->mExemptedPackages:Ljava/util/List;

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->retainAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Lcom/android/server/devicepolicy/PackageSuspender;->mExemptedPackages:Ljava/util/List;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->removeAll(Ljava/util/Collection;)Z

    new-instance v2, Lcom/android/server/devicepolicy/PackageSuspender$$ExternalSyntheticLambda0;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lcom/android/server/devicepolicy/PackageSuspender$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iget v2, p0, Lcom/android/server/devicepolicy/PackageSuspender;->mUserId:I

    const/4 v3, 0x1

    iget-object p0, p0, Lcom/android/server/devicepolicy/PackageSuspender;->mPackageManager:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {p0, v2, v3, v0}, Landroid/content/pm/PackageManagerInternal;->setPackagesSuspendedByAdmin(IZ[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "DevicePolicyManager"

    const-string/jumbo v1, "PM failed to suspend packages (%s)"

    invoke-static {v0, v1, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    move-object p1, v1

    :goto_0
    new-instance p0, Lcom/android/server/devicepolicy/PackageSuspender$$ExternalSyntheticLambda0;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/devicepolicy/PackageSuspender$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {p1, p0}, Ljava/util/Set;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public final unsuspend(Ljava/util/Set;)[Ljava/lang/String;
    .locals 4

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/android/server/devicepolicy/PackageSuspender;->mSuspendedPackageAfter:Ljava/util/Set;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->removeAll(Ljava/util/Collection;)Z

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, p1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iget-object p1, p0, Lcom/android/server/devicepolicy/PackageSuspender;->mSuspendedPackageAfter:Ljava/util/Set;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->retainAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/android/server/devicepolicy/PackageSuspender;->mExemptedPackages:Ljava/util/List;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->removeAll(Ljava/util/Collection;)Z

    new-instance p1, Lcom/android/server/devicepolicy/PackageSuspender$$ExternalSyntheticLambda0;

    const/4 v2, 0x3

    invoke-direct {p1, v2}, Lcom/android/server/devicepolicy/PackageSuspender$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v0, p1}, Ljava/util/Set;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iget v2, p0, Lcom/android/server/devicepolicy/PackageSuspender;->mUserId:I

    const/4 v3, 0x0

    iget-object p0, p0, Lcom/android/server/devicepolicy/PackageSuspender;->mPackageManager:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {p0, v2, v3, p1}, Landroid/content/pm/PackageManagerInternal;->setPackagesSuspendedByAdmin(IZ[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "DevicePolicyManager"

    const-string/jumbo v2, "PM failed to unsuspend packages (%s)"

    invoke-static {v0, v2, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1, p0}, Landroid/util/ArraySet;-><init>([Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    new-instance p0, Lcom/android/server/devicepolicy/PackageSuspender$$ExternalSyntheticLambda0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/PackageSuspender$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v1, p0}, Ljava/util/Set;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method
