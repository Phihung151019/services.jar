.class public final Lcom/android/server/app/GameSessionRecord;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mIGameSession:Landroid/service/games/IGameSession;

.field public final mRootComponentName:Landroid/content/ComponentName;

.field public final mState:Lcom/android/server/app/GameSessionRecord$State;

.field public final mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

.field public final mTaskId:I


# direct methods
.method public constructor <init>(ILcom/android/server/app/GameSessionRecord$State;Landroid/content/ComponentName;Landroid/service/games/IGameSession;Landroid/view/SurfaceControlViewHost$SurfacePackage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/app/GameSessionRecord;->mTaskId:I

    iput-object p2, p0, Lcom/android/server/app/GameSessionRecord;->mState:Lcom/android/server/app/GameSessionRecord$State;

    iput-object p3, p0, Lcom/android/server/app/GameSessionRecord;->mRootComponentName:Landroid/content/ComponentName;

    iput-object p4, p0, Lcom/android/server/app/GameSessionRecord;->mIGameSession:Landroid/service/games/IGameSession;

    iput-object p5, p0, Lcom/android/server/app/GameSessionRecord;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/server/app/GameSessionRecord;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/server/app/GameSessionRecord;

    iget v1, p1, Lcom/android/server/app/GameSessionRecord;->mTaskId:I

    iget v3, p0, Lcom/android/server/app/GameSessionRecord;->mTaskId:I

    if-ne v3, v1, :cond_2

    iget-object v1, p0, Lcom/android/server/app/GameSessionRecord;->mState:Lcom/android/server/app/GameSessionRecord$State;

    iget-object v3, p1, Lcom/android/server/app/GameSessionRecord;->mState:Lcom/android/server/app/GameSessionRecord$State;

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/android/server/app/GameSessionRecord;->mRootComponentName:Landroid/content/ComponentName;

    iget-object v3, p1, Lcom/android/server/app/GameSessionRecord;->mRootComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/app/GameSessionRecord;->mIGameSession:Landroid/service/games/IGameSession;

    iget-object v3, p1, Lcom/android/server/app/GameSessionRecord;->mIGameSession:Landroid/service/games/IGameSession;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/android/server/app/GameSessionRecord;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    iget-object p1, p1, Lcom/android/server/app/GameSessionRecord;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 7

    iget v0, p0, Lcom/android/server/app/GameSessionRecord;->mTaskId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/app/GameSessionRecord;->mRootComponentName:Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/server/app/GameSessionRecord;->mIGameSession:Landroid/service/games/IGameSession;

    iget-object v6, p0, Lcom/android/server/app/GameSessionRecord;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    iget-object v2, p0, Lcom/android/server/app/GameSessionRecord;->mState:Lcom/android/server/app/GameSessionRecord$State;

    move-object v5, v2

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GameSessionRecord{mTaskId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/app/GameSessionRecord;->mTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/app/GameSessionRecord;->mState:Lcom/android/server/app/GameSessionRecord$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mRootComponentName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/app/GameSessionRecord;->mRootComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mIGameSession="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/app/GameSessionRecord;->mIGameSession:Landroid/service/games/IGameSession;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mSurfacePackage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/app/GameSessionRecord;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
