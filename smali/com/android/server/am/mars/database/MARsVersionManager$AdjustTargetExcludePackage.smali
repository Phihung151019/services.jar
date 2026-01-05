.class public final Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetExcludePackage;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final condition:I

.field public final packageName:Ljava/lang/String;

.field public final pkgNameMatchType:Ljava/lang/String;

.field public final policyNum:I


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetExcludePackage;->policyNum:I

    iput p2, p0, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetExcludePackage;->condition:I

    iput-object p3, p0, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetExcludePackage;->pkgNameMatchType:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetExcludePackage;->packageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AdjustTargetExcludePackage: policyNum="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetExcludePackage;->policyNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", condition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetExcludePackage;->condition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pkgNameMatchType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetExcludePackage;->pkgNameMatchType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetExcludePackage;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
