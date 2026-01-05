.class public final synthetic Lcom/android/server/SystemConfigService$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/content/pm/PackageManagerInternal;


# direct methods
.method public synthetic constructor <init>(Landroid/content/pm/PackageManagerInternal;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/SystemConfigService$1$$ExternalSyntheticLambda1;->f$0:Landroid/content/pm/PackageManagerInternal;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object p0, p0, Lcom/android/server/SystemConfigService$1$$ExternalSyntheticLambda1;->f$0:Landroid/content/pm/PackageManagerInternal;

    check-cast p1, Ljava/lang/String;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManagerInternal;->canQueryPackage(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method
