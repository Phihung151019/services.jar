.class public final Lcom/android/server/am/ActivityManagerService$1ProcessToDump;
.super Ljava/lang/Record;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# annotations
.annotation system Ldalvik/annotation/Record;
    componentAnnotationVisibilities = {
        {},
        {}
    }
    componentAnnotations = {
        {},
        {}
    }
    componentNames = {
        "processName",
        "process"
    }
    componentSignatures = {
        null,
        null
    }
    componentTypes = {
        Ljava/lang/String;,
        Lcom/android/server/am/ProcessRecord;
    }
.end annotation


# instance fields
.field public final process:Lcom/android/server/am/ProcessRecord;

.field public final processName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$1ProcessToDump;->processName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$1ProcessToDump;->process:Lcom/android/server/am/ProcessRecord;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/android/server/am/ActivityManagerService$1ProcessToDump;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/server/am/ActivityManagerService$1ProcessToDump;

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$1ProcessToDump;->processName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/am/ActivityManagerService$1ProcessToDump;->processName:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$1ProcessToDump;->process:Lcom/android/server/am/ProcessRecord;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService$1ProcessToDump;->process:Lcom/android/server/am/ProcessRecord;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$1ProcessToDump;->processName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$1ProcessToDump;->process:Lcom/android/server/am/ProcessRecord;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-static {p0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$1ProcessToDump;->processName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$1ProcessToDump;->process:Lcom/android/server/am/ProcessRecord;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v0

    aput-object p0, v3, v1

    const-class p0, Lcom/android/server/am/ActivityManagerService$1ProcessToDump;

    const-string/jumbo v2, "processName;process"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    new-array v2, v0, [Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v4, ";"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "["

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    array-length p0, v2

    if-ge v0, p0, :cond_2

    aget-object p0, v2, v0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "="

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, v3, v0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    array-length p0, v2

    sub-int/2addr p0, v1

    if-eq v0, p0, :cond_1

    const-string p0, ", "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/2addr v0, v1

    goto :goto_1

    :cond_2
    const-string/jumbo p0, "]"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
