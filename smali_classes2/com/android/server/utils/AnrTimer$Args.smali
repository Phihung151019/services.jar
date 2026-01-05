.class public final Lcom/android/server/utils/AnrTimer$Args;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mExtend:Z

.field public mFreeze:Z

.field public final mInjector:Lcom/android/server/utils/AnrTimer$Injector;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/server/utils/AnrTimer;->sDefaultInjector:Lcom/android/server/utils/AnrTimer$Injector;

    iput-object v0, p0, Lcom/android/server/utils/AnrTimer$Args;->mInjector:Lcom/android/server/utils/AnrTimer$Injector;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/utils/AnrTimer$Args;->mExtend:Z

    iput-boolean v0, p0, Lcom/android/server/utils/AnrTimer$Args;->mFreeze:Z

    return-void
.end method
