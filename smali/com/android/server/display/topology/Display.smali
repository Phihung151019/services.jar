.class public final Lcom/android/server/display/topology/Display;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public children:Lcom/android/server/display/topology/Children;

.field public id:Ljava/lang/String;

.field public offset:Ljava/lang/Float;

.field public position:Lcom/android/server/display/topology/Position;

.field public primary:Ljava/lang/Boolean;


# direct methods
.method public static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/topology/Display;
    .locals 8

    new-instance v0, Lcom/android/server/display/topology/Display;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const-string/jumbo v2, "id"

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iput-object v2, v0, Lcom/android/server/display/topology/Display;->id:Ljava/lang/String;

    :cond_0
    const-string/jumbo v2, "primary"

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/display/topology/Display;->primary:Ljava/lang/Boolean;

    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq v1, v2, :cond_c

    if-eq v1, v3, :cond_c

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v4, 0x2

    if-eq v1, v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "position"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, ""

    const/4 v7, 0x4

    if-eqz v5, :cond_4

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    if-ne v1, v7, :cond_3

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    :cond_3
    invoke-static {v6}, Lcom/android/server/display/topology/Position;->fromString(Ljava/lang/String;)Lcom/android/server/display/topology/Position;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/display/topology/Display;->position:Lcom/android/server/display/topology/Position;

    goto :goto_0

    :cond_4
    const-string/jumbo v5, "offset"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    if-ne v1, v7, :cond_5

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    :cond_5
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/display/topology/Display;->offset:Ljava/lang/Float;

    goto :goto_0

    :cond_6
    const-string/jumbo v5, "children"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    new-instance v1, Lcom/android/server/display/topology/Children;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    if-eq v5, v2, :cond_9

    if-eq v5, v3, :cond_9

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    if-eq v5, v4, :cond_7

    goto :goto_1

    :cond_7
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "display"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-static {p0}, Lcom/android/server/display/topology/Display;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/topology/Display;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/server/display/topology/Children;->getDisplay()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    invoke-static {p0}, Lcom/android/server/display/topology/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    :cond_9
    if-ne v5, v3, :cond_a

    iput-object v1, v0, Lcom/android/server/display/topology/Display;->children:Lcom/android/server/display/topology/Children;

    goto/16 :goto_0

    :cond_a
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v0, "Children is not closed"

    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    invoke-static {p0}, Lcom/android/server/display/topology/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    :cond_c
    if-ne v1, v3, :cond_d

    return-object v0

    :cond_d
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v0, "Display is not closed"

    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final write(Lcom/android/server/display/topology/XmlWriter;)V
    .locals 2

    const-string v0, "<display"

    invoke-virtual {p1, v0}, Lcom/android/server/display/topology/XmlWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/display/topology/Display;->id:Ljava/lang/String;

    const-string v1, "\""

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, " id=\""

    invoke-virtual {p1, v0}, Lcom/android/server/display/topology/XmlWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/display/topology/Display;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/server/display/topology/XmlWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/android/server/display/topology/XmlWriter;->print(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/android/server/display/topology/Display;->primary:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    const-string v0, " primary=\""

    invoke-virtual {p1, v0}, Lcom/android/server/display/topology/XmlWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/display/topology/Display;->primary:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/display/topology/XmlWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/android/server/display/topology/XmlWriter;->print(Ljava/lang/String;)V

    :goto_2
    const-string v0, ">\n"

    invoke-virtual {p1, v0}, Lcom/android/server/display/topology/XmlWriter;->print(Ljava/lang/String;)V

    iget v1, p1, Lcom/android/server/display/topology/XmlWriter;->indent:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Lcom/android/server/display/topology/XmlWriter;->indent:I

    iget-object v1, p0, Lcom/android/server/display/topology/Display;->position:Lcom/android/server/display/topology/Position;

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    const-string v1, "<position>"

    invoke-virtual {p1, v1}, Lcom/android/server/display/topology/XmlWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/display/topology/Display;->position:Lcom/android/server/display/topology/Position;

    invoke-virtual {v1}, Lcom/android/server/display/topology/Position;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/server/display/topology/XmlWriter;->print(Ljava/lang/String;)V

    const-string v1, "</position>\n"

    invoke-virtual {p1, v1}, Lcom/android/server/display/topology/XmlWriter;->print(Ljava/lang/String;)V

    :goto_3
    iget-object v1, p0, Lcom/android/server/display/topology/Display;->offset:Ljava/lang/Float;

    if-nez v1, :cond_4

    goto :goto_5

    :cond_4
    const-string v1, "<offset>"

    invoke-virtual {p1, v1}, Lcom/android/server/display/topology/XmlWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/display/topology/Display;->offset:Ljava/lang/Float;

    if-nez v1, :cond_5

    const/4 v1, 0x0

    goto :goto_4

    :cond_5
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    :goto_4
    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/server/display/topology/XmlWriter;->print(Ljava/lang/String;)V

    const-string v1, "</offset>\n"

    invoke-virtual {p1, v1}, Lcom/android/server/display/topology/XmlWriter;->print(Ljava/lang/String;)V

    :goto_5
    iget-object p0, p0, Lcom/android/server/display/topology/Display;->children:Lcom/android/server/display/topology/Children;

    if-nez p0, :cond_6

    goto :goto_7

    :cond_6
    const-string v1, "<children"

    invoke-virtual {p1, v1}, Lcom/android/server/display/topology/XmlWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/android/server/display/topology/XmlWriter;->print(Ljava/lang/String;)V

    iget v0, p1, Lcom/android/server/display/topology/XmlWriter;->indent:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/android/server/display/topology/XmlWriter;->indent:I

    invoke-virtual {p0}, Lcom/android/server/display/topology/Children;->getDisplay()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/topology/Display;

    invoke-virtual {v0, p1}, Lcom/android/server/display/topology/Display;->write(Lcom/android/server/display/topology/XmlWriter;)V

    goto :goto_6

    :cond_7
    iget p0, p1, Lcom/android/server/display/topology/XmlWriter;->indent:I

    add-int/lit8 p0, p0, -0x1

    iput p0, p1, Lcom/android/server/display/topology/XmlWriter;->indent:I

    const-string p0, "</children>\n"

    invoke-virtual {p1, p0}, Lcom/android/server/display/topology/XmlWriter;->print(Ljava/lang/String;)V

    :goto_7
    iget p0, p1, Lcom/android/server/display/topology/XmlWriter;->indent:I

    add-int/lit8 p0, p0, -0x1

    iput p0, p1, Lcom/android/server/display/topology/XmlWriter;->indent:I

    const-string p0, "</display>\n"

    invoke-virtual {p1, p0}, Lcom/android/server/display/topology/XmlWriter;->print(Ljava/lang/String;)V

    return-void
.end method
