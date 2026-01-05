.class public final Lcom/android/server/wm/TaskPersister$RecentTaskFile;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mFile:Ljava/io/File;

.field public final mTaskId:I

.field public final mXmlContent:Ljava/io/ByteArrayInputStream;


# direct methods
.method public constructor <init>(Ljava/io/File;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/server/wm/TaskPersister$RecentTaskFile;->mTaskId:I

    iput-object p1, p0, Lcom/android/server/wm/TaskPersister$RecentTaskFile;->mFile:Ljava/io/File;

    new-instance p2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    invoke-static {p1}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object p2, p0, Lcom/android/server/wm/TaskPersister$RecentTaskFile;->mXmlContent:Ljava/io/ByteArrayInputStream;

    return-void
.end method
