.class public final Lcom/android/server/pm/pkg/PackageUserStateImpl$1;
.super Lcom/android/server/utils/SnapshotCache;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/pkg/PackageUserStateImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/pkg/PackageUserStateImpl;Lcom/android/server/pm/pkg/PackageUserStateImpl;Lcom/android/server/pm/pkg/PackageUserStateImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl$1;->this$0:Lcom/android/server/pm/pkg/PackageUserStateImpl;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p3, p1}, Lcom/android/server/utils/SnapshotCache;-><init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final createSnapshot()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/server/pm/pkg/PackageUserStateImpl;

    iget-object v1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl$1;->this$0:Lcom/android/server/pm/pkg/PackageUserStateImpl;

    iget-object v1, v1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mWatchable:Lcom/android/server/utils/Watchable;

    iget-object p0, p0, Lcom/android/server/utils/SnapshotCache;->mSource:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;

    invoke-direct {v0, v1, p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;-><init>(Lcom/android/server/utils/Watchable;Lcom/android/server/pm/pkg/PackageUserStateImpl;)V

    return-object v0
.end method
