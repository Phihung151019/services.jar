.class public final Lcom/android/server/pm/QueryIntentActivitiesResult;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public addInstant:Z

.field public answer:Ljava/util/List;

.field public result:Ljava/util/List;

.field public sortResult:Z


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/QueryIntentActivitiesResult;->sortResult:Z

    iput-boolean v0, p0, Lcom/android/server/pm/QueryIntentActivitiesResult;->addInstant:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/QueryIntentActivitiesResult;->result:Ljava/util/List;

    iput-object p1, p0, Lcom/android/server/pm/QueryIntentActivitiesResult;->answer:Ljava/util/List;

    return-void
.end method
