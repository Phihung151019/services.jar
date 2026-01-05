.class public final synthetic Lcom/android/server/chimera/PolicyHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f$0:Lcom/android/server/chimera/PolicyHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/chimera/PolicyHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/chimera/PolicyHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/chimera/PolicyHandler;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/android/server/chimera/ChimeraAppInfo;

    check-cast p2, Lcom/android/server/chimera/ChimeraAppInfo;

    iget p0, p1, Lcom/android/server/chimera/ChimeraAppInfo;->group:I

    iget v0, p2, Lcom/android/server/chimera/ChimeraAppInfo;->group:I

    sub-int/2addr p0, v0

    if-eqz p0, :cond_0

    return p0

    :cond_0
    invoke-static {p2}, Lcom/android/server/chimera/PolicyHandler;->getDRAMUsedByApp(Lcom/android/server/chimera/ChimeraAppInfo;)J

    move-result-wide v0

    invoke-static {p1}, Lcom/android/server/chimera/PolicyHandler;->getDRAMUsedByApp(Lcom/android/server/chimera/ChimeraAppInfo;)J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method
