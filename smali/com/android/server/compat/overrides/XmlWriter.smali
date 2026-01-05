.class public final Lcom/android/server/compat/overrides/XmlWriter;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public indent:I

.field public out:Ljava/io/PrintWriter;

.field public outBuffer:Ljava/lang/StringBuilder;

.field public startLine:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/compat/overrides/XmlWriter;

    return-void
.end method

.method public static write(Lcom/android/server/compat/overrides/XmlWriter;Lcom/android/server/compat/overrides/Overrides;)V
    .locals 10

    const-string v0, "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n"

    invoke-virtual {p0, v0}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    const-string v0, "<overrides"

    invoke-virtual {p0, v0}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    const-string v0, ">\n"

    invoke-virtual {p0, v0}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/compat/overrides/XmlWriter;->indent:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/compat/overrides/XmlWriter;->indent:I

    invoke-virtual {p1}, Lcom/android/server/compat/overrides/Overrides;->getChangeOverrides()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/compat/overrides/ChangeOverrides;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "<change-overrides"

    invoke-virtual {p0, v2}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/server/compat/overrides/ChangeOverrides;->changeId:Ljava/lang/Long;

    const-wide/16 v3, 0x0

    const-string v5, "\""

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    const-string v2, " changeId=\""

    invoke-virtual {p0, v2}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/server/compat/overrides/ChangeOverrides;->changeId:Ljava/lang/Long;

    if-nez v2, :cond_1

    move-wide v6, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    :goto_1
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/compat/overrides/XmlWriter;->indent:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/compat/overrides/XmlWriter;->indent:I

    iget-object v2, v1, Lcom/android/server/compat/overrides/ChangeOverrides;->validated:Lcom/android/server/compat/overrides/ChangeOverrides$Raw;

    if-nez v2, :cond_2

    goto :goto_4

    :cond_2
    const-string v6, "<validated"

    invoke-virtual {p0, v6}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    iget v6, p0, Lcom/android/server/compat/overrides/XmlWriter;->indent:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/server/compat/overrides/XmlWriter;->indent:I

    invoke-virtual {v2}, Lcom/android/server/compat/overrides/ChangeOverrides$Raw;->getOverrideValue()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/compat/overrides/OverrideValue;

    invoke-virtual {v6, p0}, Lcom/android/server/compat/overrides/OverrideValue;->write(Lcom/android/server/compat/overrides/XmlWriter;)V

    goto :goto_3

    :cond_3
    iget v2, p0, Lcom/android/server/compat/overrides/XmlWriter;->indent:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/server/compat/overrides/XmlWriter;->indent:I

    const-string v2, "</validated>\n"

    invoke-virtual {p0, v2}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    :goto_4
    iget-object v2, v1, Lcom/android/server/compat/overrides/ChangeOverrides;->deferred:Lcom/android/server/compat/overrides/ChangeOverrides$Raw;

    const/4 v6, 0x0

    if-nez v2, :cond_4

    goto :goto_6

    :cond_4
    const-string v7, "<deferred"

    invoke-virtual {p0, v7}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/compat/overrides/XmlWriter;->indent:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/server/compat/overrides/XmlWriter;->indent:I

    iget-object v7, v2, Lcom/android/server/compat/overrides/ChangeOverrides$Raw;->rawOverrideValue:Ljava/util/List;

    if-nez v7, :cond_5

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v2, Lcom/android/server/compat/overrides/ChangeOverrides$Raw;->rawOverrideValue:Ljava/util/List;

    :cond_5
    iget-object v2, v2, Lcom/android/server/compat/overrides/ChangeOverrides$Raw;->rawOverrideValue:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v8, v6

    :goto_5
    if-ge v8, v7, :cond_6

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v8, v8, 0x1

    check-cast v9, Lcom/android/server/compat/overrides/OverrideValue;

    invoke-virtual {v9, p0}, Lcom/android/server/compat/overrides/OverrideValue;->write(Lcom/android/server/compat/overrides/XmlWriter;)V

    goto :goto_5

    :cond_6
    iget v2, p0, Lcom/android/server/compat/overrides/XmlWriter;->indent:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/server/compat/overrides/XmlWriter;->indent:I

    const-string v2, "</deferred>\n"

    invoke-virtual {p0, v2}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    :goto_6
    iget-object v1, v1, Lcom/android/server/compat/overrides/ChangeOverrides;->raw:Lcom/android/server/compat/overrides/ChangeOverrides$Raw;

    if-nez v1, :cond_7

    goto/16 :goto_f

    :cond_7
    const-string v2, "<raw"

    invoke-virtual {p0, v2}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/compat/overrides/XmlWriter;->indent:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/compat/overrides/XmlWriter;->indent:I

    invoke-virtual {v1}, Lcom/android/server/compat/overrides/ChangeOverrides$Raw;->getRawOverrideValue()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/compat/overrides/RawOverrideValue;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v7, "<raw-override-value"

    invoke-virtual {p0, v7}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    iget-object v7, v2, Lcom/android/server/compat/overrides/RawOverrideValue;->packageName:Ljava/lang/String;

    if-nez v7, :cond_8

    goto :goto_8

    :cond_8
    const-string v7, " packageName=\""

    invoke-virtual {p0, v7}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    iget-object v7, v2, Lcom/android/server/compat/overrides/RawOverrideValue;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    :goto_8
    iget-object v7, v2, Lcom/android/server/compat/overrides/RawOverrideValue;->minVersionCode:Ljava/lang/Long;

    if-nez v7, :cond_9

    goto :goto_a

    :cond_9
    const-string v7, " minVersionCode=\""

    invoke-virtual {p0, v7}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    iget-object v7, v2, Lcom/android/server/compat/overrides/RawOverrideValue;->minVersionCode:Ljava/lang/Long;

    if-nez v7, :cond_a

    move-wide v7, v3

    goto :goto_9

    :cond_a
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    :goto_9
    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    :goto_a
    iget-object v7, v2, Lcom/android/server/compat/overrides/RawOverrideValue;->maxVersionCode:Ljava/lang/Long;

    if-nez v7, :cond_b

    goto :goto_c

    :cond_b
    const-string v7, " maxVersionCode=\""

    invoke-virtual {p0, v7}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    iget-object v7, v2, Lcom/android/server/compat/overrides/RawOverrideValue;->maxVersionCode:Ljava/lang/Long;

    if-nez v7, :cond_c

    move-wide v7, v3

    goto :goto_b

    :cond_c
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    :goto_b
    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    :goto_c
    iget-object v7, v2, Lcom/android/server/compat/overrides/RawOverrideValue;->enabled:Ljava/lang/Boolean;

    if-nez v7, :cond_d

    goto :goto_e

    :cond_d
    const-string v7, " enabled=\""

    invoke-virtual {p0, v7}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    iget-object v2, v2, Lcom/android/server/compat/overrides/RawOverrideValue;->enabled:Ljava/lang/Boolean;

    if-nez v2, :cond_e

    move v2, v6

    goto :goto_d

    :cond_e
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :goto_d
    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    :goto_e
    invoke-virtual {p0, v0}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    const-string v2, "</raw-override-value>\n"

    invoke-virtual {p0, v2}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_f
    iget v1, p0, Lcom/android/server/compat/overrides/XmlWriter;->indent:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/compat/overrides/XmlWriter;->indent:I

    const-string v1, "</raw>\n"

    invoke-virtual {p0, v1}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    :goto_f
    iget v1, p0, Lcom/android/server/compat/overrides/XmlWriter;->indent:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/compat/overrides/XmlWriter;->indent:I

    const-string v1, "</change-overrides>\n"

    invoke-virtual {p0, v1}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_10
    iget p1, p0, Lcom/android/server/compat/overrides/XmlWriter;->indent:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/server/compat/overrides/XmlWriter;->indent:I

    const-string p1, "</overrides>\n"

    invoke-virtual {p0, p1}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/compat/overrides/XmlWriter;->out:Ljava/io/PrintWriter;

    iget-object p0, p0, Lcom/android/server/compat/overrides/XmlWriter;->outBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/compat/overrides/XmlWriter;->out:Ljava/io/PrintWriter;

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

    iget-boolean v3, p0, Lcom/android/server/compat/overrides/XmlWriter;->startLine:Z

    if-eqz v3, :cond_2

    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v1

    :goto_1
    iget v4, p0, Lcom/android/server/compat/overrides/XmlWriter;->indent:I

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Lcom/android/server/compat/overrides/XmlWriter;->outBuffer:Ljava/lang/StringBuilder;

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iput-boolean v1, p0, Lcom/android/server/compat/overrides/XmlWriter;->startLine:Z

    :cond_2
    iget-object v3, p0, Lcom/android/server/compat/overrides/XmlWriter;->outBuffer:Ljava/lang/StringBuilder;

    aget-object v4, p1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    array-length v3, p1

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/android/server/compat/overrides/XmlWriter;->outBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/compat/overrides/XmlWriter;->startLine:Z

    goto :goto_0

    :cond_3
    return-void
.end method
