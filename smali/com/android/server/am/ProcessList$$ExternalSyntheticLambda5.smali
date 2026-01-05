.class public final synthetic Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/ProcessList;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ProcessList;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/am/ProcessList;

    iput-wide p2, p0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda5;->f$1:J

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/am/ProcessList;

    iget-wide v1, p0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda5;->f$1:J

    check-cast p1, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/am/ProcessList;->killAppIfBgRestrictedAndCachedIdleLocked(Lcom/android/server/am/ProcessRecord;J)J

    return-void
.end method
