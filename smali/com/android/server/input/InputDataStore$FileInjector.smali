.class Lcom/android/server/input/InputDataStore$FileInjector;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mAtomicFileMap:Landroid/util/SparseArray;

.field public final mFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputDataStore$FileInjector;->mAtomicFileMap:Landroid/util/SparseArray;

    const-string/jumbo v0, "input_gestures.xml"

    iput-object v0, p0, Lcom/android/server/input/InputDataStore$FileInjector;->mFileName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getAtomicFileForUserId(I)Landroid/util/AtomicFile;
    .locals 5

    iget-object v0, p0, Lcom/android/server/input/InputDataStore$FileInjector;->mAtomicFileMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/input/InputDataStore$FileInjector;->mAtomicFileMap:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/AtomicFile;

    new-instance v2, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getDataSystemDeDirectory(I)Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "input"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/input/InputDataStore$FileInjector;->mFileName:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    iget-object p0, p0, Lcom/android/server/input/InputDataStore$FileInjector;->mAtomicFileMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/AtomicFile;

    return-object p0
.end method
