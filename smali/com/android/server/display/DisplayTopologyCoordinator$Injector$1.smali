.class public final Lcom/android/server/display/DisplayTopologyCoordinator$Injector$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic val$displayIdToUniqueIdMapping:Landroid/util/SparseArray;

.field public final synthetic val$uniqueIdToDisplayIdMapping:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/util/SparseArray;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/DisplayTopologyCoordinator$Injector$1;->val$displayIdToUniqueIdMapping:Landroid/util/SparseArray;

    iput-object p2, p0, Lcom/android/server/display/DisplayTopologyCoordinator$Injector$1;->val$uniqueIdToDisplayIdMapping:Ljava/util/Map;

    return-void
.end method

.method public static getFileInputStream(Ljava/io/File;)Ljava/io/FileInputStream;
    .locals 2

    sget-boolean v0, Lcom/android/server/display/DisplayTopologyXmlStore;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "File: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " exists="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayManager.DisplayTopologyXmlStore"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public static readProductTopologies()Ljava/io/InputStream;
    .locals 4

    sget-boolean v0, Lcom/android/server/display/DisplayTopologyXmlStore;->DEBUG:Z

    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v1, "displayconfig"

    const-string/jumbo v2, "display_topology.xml"

    const-string/jumbo v3, "etc"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/display/DisplayTopologyCoordinator$Injector$1;->getFileInputStream(Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object v0

    return-object v0
.end method

.method public static readVendorTopologies()Ljava/io/InputStream;
    .locals 4

    sget-boolean v0, Lcom/android/server/display/DisplayTopologyXmlStore;->DEBUG:Z

    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v1, "displayconfig"

    const-string/jumbo v2, "display_topology.xml"

    const-string/jumbo v3, "etc"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/display/DisplayTopologyCoordinator$Injector$1;->getFileInputStream(Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object v0

    return-object v0
.end method
