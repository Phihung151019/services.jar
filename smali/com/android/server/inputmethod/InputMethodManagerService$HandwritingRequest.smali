.class public final Lcom/android/server/inputmethod/InputMethodManagerService$HandwritingRequest;
.super Ljava/lang/Record;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# annotations
.annotation system Ldalvik/annotation/Record;
    componentAnnotationVisibilities = {
        {},
        {},
        {}
    }
    componentAnnotations = {
        {},
        {},
        {}
    }
    componentNames = {
        "requestId",
        "pid",
        "userData"
    }
    componentSignatures = {
        null,
        null,
        null
    }
    componentTypes = {
        I,
        I,
        Lcom/android/server/inputmethod/UserData;
    }
.end annotation


# instance fields
.field public final pid:I

.field public final requestId:I

.field public final userData:Lcom/android/server/inputmethod/UserData;


# direct methods
.method public constructor <init>(IILcom/android/server/inputmethod/UserData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$HandwritingRequest;->requestId:I

    iput p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$HandwritingRequest;->pid:I

    iput-object p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$HandwritingRequest;->userData:Lcom/android/server/inputmethod/UserData;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$HandwritingRequest;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/server/inputmethod/InputMethodManagerService$HandwritingRequest;

    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$HandwritingRequest;->requestId:I

    iget v1, p1, Lcom/android/server/inputmethod/InputMethodManagerService$HandwritingRequest;->requestId:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$HandwritingRequest;->pid:I

    iget v1, p1, Lcom/android/server/inputmethod/InputMethodManagerService$HandwritingRequest;->pid:I

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$HandwritingRequest;->userData:Lcom/android/server/inputmethod/UserData;

    iget-object p1, p1, Lcom/android/server/inputmethod/InputMethodManagerService$HandwritingRequest;->userData:Lcom/android/server/inputmethod/UserData;

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
    .locals 2

    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$HandwritingRequest;->requestId:I

    iget v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$HandwritingRequest;->pid:I

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$HandwritingRequest;->userData:Lcom/android/server/inputmethod/UserData;

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

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

    iget v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$HandwritingRequest;->requestId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$HandwritingRequest;->pid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$HandwritingRequest;->userData:Lcom/android/server/inputmethod/UserData;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v0

    aput-object v3, v4, v1

    const/4 v2, 0x2

    aput-object p0, v4, v2

    const-class p0, Lcom/android/server/inputmethod/InputMethodManagerService$HandwritingRequest;

    const-string/jumbo v2, "requestId;pid;userData"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    new-array v2, v0, [Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "["

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    array-length p0, v2

    if-ge v0, p0, :cond_2

    aget-object p0, v2, v0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "="

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, v4, v0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    array-length p0, v2

    sub-int/2addr p0, v1

    if-eq v0, p0, :cond_1

    const-string p0, ", "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/2addr v0, v1

    goto :goto_1

    :cond_2
    const-string/jumbo p0, "]"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
