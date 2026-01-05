.class public final Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final lastInterval:Ljava/lang/String;

.field public final latitude:Ljava/lang/String;

.field public final longitude:Ljava/lang/String;

.field public final message:Ljava/lang/String;

.field public final receivedTime:Ljava/lang/String;

.field public final sessionNumber:J

.field public final time:Ljava/lang/String;

.field public final type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;->receivedTime:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;->type:Ljava/lang/String;

    iput-wide p3, p0, Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;->sessionNumber:J

    iput-object p5, p0, Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;->latitude:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;->longitude:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;->time:Ljava/lang/String;

    iput-object p8, p0, Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;->lastInterval:Ljava/lang/String;

    iput-object p9, p0, Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;->message:Ljava/lang/String;

    return-void
.end method
