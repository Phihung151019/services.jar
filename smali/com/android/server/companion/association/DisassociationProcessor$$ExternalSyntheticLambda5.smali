.class public final synthetic Lcom/android/server/companion/association/DisassociationProcessor$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/companion/association/DisassociationProcessor;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/companion/association/DisassociationProcessor;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/companion/association/DisassociationProcessor$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/companion/association/DisassociationProcessor;

    iput-object p2, p0, Lcom/android/server/companion/association/DisassociationProcessor$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/companion/association/DisassociationProcessor$$ExternalSyntheticLambda5;->f$2:I

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/android/server/companion/association/DisassociationProcessor$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/companion/association/DisassociationProcessor;

    iget-object v1, p0, Lcom/android/server/companion/association/DisassociationProcessor$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    iget p0, p0, Lcom/android/server/companion/association/DisassociationProcessor$$ExternalSyntheticLambda5;->f$2:I

    iget-object v2, v0, Lcom/android/server/companion/association/DisassociationProcessor;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v1, v3, v4, p0}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result p0

    iget-object v0, v0, Lcom/android/server/companion/association/DisassociationProcessor;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v0, p0}, Landroid/app/ActivityManager;->getUidImportance(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
