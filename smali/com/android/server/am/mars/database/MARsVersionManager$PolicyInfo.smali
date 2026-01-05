.class public final Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final action:I

.field public final enabled:I

.field public final firstTriggerTime:J

.field public final name:Ljava/lang/String;

.field public final num:I

.field public final repeatTriggerTime:J

.field public final restriction:I

.field public final targetCategory:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIIIJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;->name:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;->num:I

    iput p3, p0, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;->enabled:I

    iput p4, p0, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;->targetCategory:I

    iput p5, p0, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;->restriction:I

    iput p6, p0, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;->action:I

    iput-wide p7, p0, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;->firstTriggerTime:J

    iput-wide p9, p0, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;->repeatTriggerTime:J

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", num="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;->num:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;->enabled:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", targetCategory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;->targetCategory:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", restriction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;->restriction:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;->action:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", firstTriggerTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;->firstTriggerTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", repeatTriggerTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;->repeatTriggerTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
