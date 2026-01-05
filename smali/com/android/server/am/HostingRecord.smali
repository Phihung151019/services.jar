.class public final Lcom/android/server/am/HostingRecord;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mAction:Ljava/lang/String;

.field public final mDefiningPackageName:Ljava/lang/String;

.field public final mDefiningProcessName:Ljava/lang/String;

.field public final mDefiningUid:I

.field public final mHostingName:Ljava/lang/String;

.field public final mHostingType:Ljava/lang/String;

.field public final mHostingZygote:I

.field public final mIsTopApp:Z

.field public final mTriggerType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;)V
    .locals 7

    invoke-virtual {p1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    const/4 v6, -0x1

    const/4 v4, 0x0

    const-string/jumbo v1, "content provider"

    const/4 v3, 0x0

    const-string/jumbo v5, "unknown"

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/HostingRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/ComponentName;Ljava/lang/String;Z)V
    .locals 10

    invoke-virtual {p1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x0

    const-string/jumbo v9, "unknown"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p2

    move v6, p3

    invoke-direct/range {v0 .. v9}, Lcom/android/server/am/HostingRecord;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 10

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v8, 0x0

    const-string/jumbo v9, "unknown"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/android/server/am/HostingRecord;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v8, 0x0

    const-string/jumbo v9, "unknown"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v9}, Lcom/android/server/am/HostingRecord;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/HostingRecord;->mHostingType:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/am/HostingRecord;->mHostingName:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/am/HostingRecord;->mHostingZygote:I

    iput-object p4, p0, Lcom/android/server/am/HostingRecord;->mDefiningPackageName:Ljava/lang/String;

    iput p5, p0, Lcom/android/server/am/HostingRecord;->mDefiningUid:I

    iput-boolean p6, p0, Lcom/android/server/am/HostingRecord;->mIsTopApp:Z

    iput-object p7, p0, Lcom/android/server/am/HostingRecord;->mDefiningProcessName:Ljava/lang/String;

    iput-object p8, p0, Lcom/android/server/am/HostingRecord;->mAction:Ljava/lang/String;

    iput-object p9, p0, Lcom/android/server/am/HostingRecord;->mTriggerType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/HostingRecord;->mHostingType:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/am/HostingRecord;->mHostingName:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/am/HostingRecord;->mHostingZygote:I

    iput-object p3, p0, Lcom/android/server/am/HostingRecord;->mDefiningPackageName:Ljava/lang/String;

    iput p6, p0, Lcom/android/server/am/HostingRecord;->mDefiningUid:I

    iput-boolean p1, p0, Lcom/android/server/am/HostingRecord;->mIsTopApp:Z

    iput-object p4, p0, Lcom/android/server/am/HostingRecord;->mDefiningProcessName:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/am/HostingRecord;->mAction:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/am/HostingRecord;->mTriggerType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toStringForTracker()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/HostingRecord;->mHostingName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/HostingRecord;->mAction:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
