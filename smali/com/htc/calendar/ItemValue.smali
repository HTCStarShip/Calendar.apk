.class public Lcom/htc/calendar/ItemValue;
.super Ljava/lang/Object;
.source "ItemValue.java"

# interfaces
.implements Ljava/lang/CharSequence;


# instance fields
.field private id:I

.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter "value"
    .parameter "id"

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/calendar/ItemValue;->mValue:Ljava/lang/String;

    .line 6
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/calendar/ItemValue;->id:I

    .line 15
    iput-object p1, p0, Lcom/htc/calendar/ItemValue;->mValue:Ljava/lang/String;

    .line 16
    iput p2, p0, Lcom/htc/calendar/ItemValue;->id:I

    .line 17
    return-void
.end method


# virtual methods
.method public charAt(I)C
    .locals 1
    .parameter "index"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/htc/calendar/ItemValue;->mValue:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 10
    iget v0, p0, Lcom/htc/calendar/ItemValue;->id:I

    return v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/htc/calendar/ItemValue;->mValue:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 1
    .parameter "start"
    .parameter "end"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/htc/calendar/ItemValue;->mValue:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/calendar/ItemValue;->mValue:Ljava/lang/String;

    return-object v0
.end method
