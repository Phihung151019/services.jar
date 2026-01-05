.class public abstract Lcom/android/server/am/mars/filter/filter/RecentUsedPackageFilter$RecentUsedPackageFilterHolder;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final INSTANCE:Lcom/android/server/am/mars/filter/filter/RecentUsedPackageFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/server/am/mars/filter/filter/RecentUsedPackageFilter;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    const-string/jumbo v2, "com.codoon.gps"

    const-string/jumbo v3, "com.traffic.panda"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/server/am/mars/filter/filter/RecentUsedPackageFilter;->RogueApp:Ljava/util/ArrayList;

    sput-object v0, Lcom/android/server/am/mars/filter/filter/RecentUsedPackageFilter$RecentUsedPackageFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/RecentUsedPackageFilter;

    return-void
.end method
