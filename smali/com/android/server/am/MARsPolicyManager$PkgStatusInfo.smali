.class public final Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public currentLevel:I

.field public disableReason:I

.field public disableType:I

.field public fasType:I

.field public isDisabled:Z

.field public isFASEnabled:Z

.field public isInRestrictedBucket:Z

.field public maxLevel:I

.field public final name:Ljava/lang/String;

.field public possibleLevel:I

.field public state:I

.field public final uid:I

.field public final userId:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetcurrentLevel(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I
    .locals 0

    iget p0, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->currentLevel:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputcurrentLevel(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;I)V
    .locals 0

    iput p1, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->currentLevel:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->uid:I

    iput p3, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->userId:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->fasType:I

    const/4 p2, 0x1

    iput p2, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->state:I

    iput p1, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->currentLevel:I

    iput p2, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->possibleLevel:I

    iput p2, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->maxLevel:I

    iput-boolean p1, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isFASEnabled:Z

    iput-boolean p1, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isInRestrictedBucket:Z

    iput-boolean p1, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isDisabled:Z

    const/4 p2, -0x1

    iput p2, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->disableType:I

    iput p1, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->disableReason:I

    return-void
.end method
