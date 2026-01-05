.class public final Lcom/android/server/alarm/Alarm$Snapshot;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mPolicyWhenElapsed:[J

.field public final mTag:Ljava/lang/String;

.field public final mType:I


# direct methods
.method public constructor <init>(Lcom/android/server/alarm/Alarm;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/android/server/alarm/Alarm;->type:I

    iput v0, p0, Lcom/android/server/alarm/Alarm$Snapshot;->mType:I

    iget-object v0, p1, Lcom/android/server/alarm/Alarm;->statsTag:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/alarm/Alarm$Snapshot;->mTag:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/alarm/Alarm;->mPolicyWhenElapsed:[J

    const/4 v0, 0x5

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/alarm/Alarm$Snapshot;->mPolicyWhenElapsed:[J

    return-void
.end method
