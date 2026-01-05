.class public final Lcom/android/server/display/topology/XmlWriter;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public indent:I

.field public final out:Ljava/io/PrintWriter;

.field public final outBuffer:Ljava/lang/StringBuilder;

.field public startLine:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/display/topology/XmlWriter;

    return-void
.end method

.method public constructor <init>(Ljava/io/PrintWriter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/topology/XmlWriter;->out:Ljava/io/PrintWriter;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/topology/XmlWriter;->outBuffer:Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/display/topology/XmlWriter;->indent:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/display/topology/XmlWriter;->startLine:Z

    return-void
.end method

.method public static write(Lcom/android/server/display/topology/XmlWriter;Lcom/android/server/display/topology/DisplayTopologyState;)V
    .locals 5

    const-string v0, "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n"

    invoke-virtual {p0, v0}, Lcom/android/server/display/topology/XmlWriter;->print(Ljava/lang/String;)V

    const-string v0, "<displayTopologyState"

    invoke-virtual {p0, v0}, Lcom/android/server/display/topology/XmlWriter;->print(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/server/display/topology/DisplayTopologyState;->version:Ljava/lang/Integer;

    const/4 v1, 0x0

    const-string v2, "\""

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, " version=\""

    invoke-virtual {p0, v0}, Lcom/android/server/display/topology/XmlWriter;->print(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/server/display/topology/DisplayTopologyState;->version:Ljava/lang/Integer;

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/display/topology/XmlWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/android/server/display/topology/XmlWriter;->print(Ljava/lang/String;)V

    :goto_1
    const-string v0, ">\n"

    invoke-virtual {p0, v0}, Lcom/android/server/display/topology/XmlWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/display/topology/XmlWriter;->indent:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/display/topology/XmlWriter;->indent:I

    invoke-virtual {p1}, Lcom/android/server/display/topology/DisplayTopologyState;->getTopology()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/topology/Topology;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "<topology"

    invoke-virtual {p0, v4}, Lcom/android/server/display/topology/XmlWriter;->print(Ljava/lang/String;)V

    iget-object v4, v3, Lcom/android/server/display/topology/Topology;->id:Ljava/lang/String;

    if-nez v4, :cond_2

    goto :goto_3

    :cond_2
    const-string v4, " id=\""

    invoke-virtual {p0, v4}, Lcom/android/server/display/topology/XmlWriter;->print(Ljava/lang/String;)V

    iget-object v4, v3, Lcom/android/server/display/topology/Topology;->id:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/server/display/topology/XmlWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/android/server/display/topology/XmlWriter;->print(Ljava/lang/String;)V

    :goto_3
    iget-object v4, v3, Lcom/android/server/display/topology/Topology;->order:Ljava/lang/Integer;

    if-nez v4, :cond_3

    goto :goto_4

    :cond_3
    const-string v4, " order=\""

    invoke-virtual {p0, v4}, Lcom/android/server/display/topology/XmlWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/server/display/topology/Topology;->getOrder()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/display/topology/XmlWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/android/server/display/topology/XmlWriter;->print(Ljava/lang/String;)V

    :goto_4
    iget-object v4, v3, Lcom/android/server/display/topology/Topology;->immutable:Ljava/lang/Boolean;

    if-nez v4, :cond_4

    goto :goto_6

    :cond_4
    const-string v4, " immutable=\""

    invoke-virtual {p0, v4}, Lcom/android/server/display/topology/XmlWriter;->print(Ljava/lang/String;)V

    iget-object v4, v3, Lcom/android/server/display/topology/Topology;->immutable:Ljava/lang/Boolean;

    if-nez v4, :cond_5

    move v4, v1

    goto :goto_5

    :cond_5
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    :goto_5
    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/display/topology/XmlWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/android/server/display/topology/XmlWriter;->print(Ljava/lang/String;)V

    :goto_6
    invoke-virtual {p0, v0}, Lcom/android/server/display/topology/XmlWriter;->print(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/server/display/topology/XmlWriter;->indent:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/display/topology/XmlWriter;->indent:I

    iget-object v3, v3, Lcom/android/server/display/topology/Topology;->display:Lcom/android/server/display/topology/Display;

    if-nez v3, :cond_6

    goto :goto_7

    :cond_6
    invoke-virtual {v3, p0}, Lcom/android/server/display/topology/Display;->write(Lcom/android/server/display/topology/XmlWriter;)V

    :goto_7
    iget v3, p0, Lcom/android/server/display/topology/XmlWriter;->indent:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/android/server/display/topology/XmlWriter;->indent:I

    const-string v3, "</topology>\n"

    invoke-virtual {p0, v3}, Lcom/android/server/display/topology/XmlWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    iget p1, p0, Lcom/android/server/display/topology/XmlWriter;->indent:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/server/display/topology/XmlWriter;->indent:I

    const-string p1, "</displayTopologyState>\n"

    invoke-virtual {p0, p1}, Lcom/android/server/display/topology/XmlWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/display/topology/XmlWriter;->out:Ljava/io/PrintWriter;

    iget-object p0, p0, Lcom/android/server/display/topology/XmlWriter;->outBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/display/topology/XmlWriter;->out:Ljava/io/PrintWriter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/PrintWriter;->close()V

    :cond_0
    return-void
.end method

.method public final print(Ljava/lang/String;)V
    .locals 6

    const-string v0, "\n"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_3

    iget-boolean v3, p0, Lcom/android/server/display/topology/XmlWriter;->startLine:Z

    if-eqz v3, :cond_2

    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v1

    :goto_1
    iget v4, p0, Lcom/android/server/display/topology/XmlWriter;->indent:I

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Lcom/android/server/display/topology/XmlWriter;->outBuffer:Ljava/lang/StringBuilder;

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iput-boolean v1, p0, Lcom/android/server/display/topology/XmlWriter;->startLine:Z

    :cond_2
    iget-object v3, p0, Lcom/android/server/display/topology/XmlWriter;->outBuffer:Ljava/lang/StringBuilder;

    aget-object v4, p1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    array-length v3, p1

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/android/server/display/topology/XmlWriter;->outBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/display/topology/XmlWriter;->startLine:Z

    goto :goto_0

    :cond_3
    return-void
.end method
