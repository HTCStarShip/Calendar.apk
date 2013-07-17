.class public Lcom/htc/calendar/utils/QuotedPrintable;
.super Ljava/lang/Object;
.source "QuotedPrintable.java"


# static fields
.field private static final SLB:Lcom/htc/calendar/utils/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 7
    new-instance v0, Lcom/htc/calendar/utils/ByteString;

    const-string v1, "=\r\n"

    invoke-direct {v0, v1}, Lcom/htc/calendar/utils/ByteString;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/htc/calendar/utils/QuotedPrintable;->SLB:Lcom/htc/calendar/utils/ByteString;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final decode(Ljava/util/ArrayList;IILjava/lang/String;)V
    .locals 12
    .parameter
    .parameter "from"
    .parameter "to"
    .parameter "bound"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/calendar/utils/ByteString;",
            ">;II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 11
    .local p0, lines:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/calendar/utils/ByteString;>;"
    invoke-static {p0, p1, p2}, Lcom/htc/calendar/utils/QuotedPrintable;->stripSoftLineBreaks(Ljava/util/ArrayList;II)I

    move-result v10

    sub-int/2addr p2, v10

    .line 12
    if-nez p3, :cond_1

    const/4 v1, 0x0

    .line 14
    .local v1, checkBound:Ljava/lang/String;
    :goto_0
    const/4 v4, 0x0

    .line 16
    .local v4, lastWasCR:Z
    move v6, p1

    .local v6, line:I
    :goto_1
    if-ge v6, p2, :cond_8

    .line 17
    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/calendar/utils/ByteString;

    .line 18
    .local v9, s:Lcom/htc/calendar/utils/ByteString;
    if-eqz v9, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v9}, Lcom/htc/calendar/utils/ByteString;->length()I

    move-result v10

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v11

    if-lt v10, v11, :cond_2

    invoke-virtual {v9}, Lcom/htc/calendar/utils/ByteString;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 16
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 12
    .end local v1           #checkBound:Ljava/lang/String;
    .end local v4           #lastWasCR:Z
    .end local v6           #line:I
    .end local v9           #s:Lcom/htc/calendar/utils/ByteString;
    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "--"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v10, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 19
    .restart local v1       #checkBound:Ljava/lang/String;
    .restart local v4       #lastWasCR:Z
    .restart local v6       #line:I
    .restart local v9       #s:Lcom/htc/calendar/utils/ByteString;
    :cond_2
    invoke-static {v9}, Lcom/htc/calendar/utils/QuotedPrintable;->stripTrailingWhitespace(Lcom/htc/calendar/utils/ByteString;)V

    .line 21
    invoke-virtual {v9}, Lcom/htc/calendar/utils/ByteString;->length()I

    move-result v5

    .line 24
    .local v5, len:I
    const/4 v10, 0x2

    if-lt v5, v10, :cond_3

    add-int/lit8 v10, v5, -0x2

    invoke-virtual {v9, v10}, Lcom/htc/calendar/utils/ByteString;->byteAt(I)B

    move-result v10

    const/16 v11, 0xd

    if-ne v10, v11, :cond_3

    add-int/lit8 v10, v5, -0x1

    invoke-virtual {v9, v10}, Lcom/htc/calendar/utils/ByteString;->byteAt(I)B

    move-result v10

    const/16 v11, 0xa

    if-ne v10, v11, :cond_3

    .line 25
    add-int/lit8 v5, v5, -0x2

    .line 28
    :cond_3
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    if-ge v3, v5, :cond_0

    .line 29
    invoke-virtual {v9, v3}, Lcom/htc/calendar/utils/ByteString;->byteAt(I)B

    move-result v0

    .line 31
    .local v0, b:B
    const/16 v10, 0x1a

    if-gt v0, v10, :cond_5

    const/16 v10, 0x9

    if-eq v0, v10, :cond_5

    const/16 v10, 0x20

    if-eq v0, v10, :cond_5

    .line 33
    invoke-virtual {v9, v3}, Lcom/htc/calendar/utils/ByteString;->delete(I)V

    .line 34
    add-int/lit8 v5, v5, -0x1

    .line 28
    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 38
    :cond_5
    const/16 v10, 0x3d

    if-ne v0, v10, :cond_4

    .line 39
    add-int/lit8 v10, v3, 0x2

    if-ge v10, v5, :cond_0

    .line 47
    add-int/lit8 v10, v3, 0x1

    invoke-virtual {v9, v10}, Lcom/htc/calendar/utils/ByteString;->byteAt(I)B

    move-result v10

    invoke-static {v10}, Lcom/htc/calendar/utils/QuotedPrintable;->hexDigit(I)I

    move-result v2

    .line 48
    .local v2, hi:I
    add-int/lit8 v10, v3, 0x2

    invoke-virtual {v9, v10}, Lcom/htc/calendar/utils/ByteString;->byteAt(I)B

    move-result v10

    invoke-static {v10}, Lcom/htc/calendar/utils/QuotedPrintable;->hexDigit(I)I

    move-result v7

    .line 50
    .local v7, lo:I
    const/4 v10, -0x1

    if-eq v2, v10, :cond_4

    const/4 v10, -0x1

    if-eq v7, v10, :cond_4

    .line 55
    shl-int/lit8 v10, v2, 0x4

    or-int v8, v10, v7

    .line 57
    .local v8, newByte:I
    const/16 v10, 0xa

    if-ne v8, v10, :cond_6

    if-eqz v4, :cond_6

    .line 59
    add-int/lit8 v10, v3, -0x1

    const/16 v11, 0xa

    invoke-virtual {v9, v10, v11}, Lcom/htc/calendar/utils/ByteString;->set(II)V

    .line 62
    const/4 v10, 0x3

    invoke-virtual {v9, v3, v10}, Lcom/htc/calendar/utils/ByteString;->delete(II)V

    .line 65
    add-int/lit8 v5, v5, -0x3

    .line 70
    add-int/lit8 v3, v3, -0x1

    .line 72
    const/4 v4, 0x0

    goto :goto_3

    .line 74
    :cond_6
    const/16 v10, 0xd

    if-ne v8, v10, :cond_7

    .line 75
    const/4 v4, 0x1

    .line 81
    :goto_4
    invoke-virtual {v9, v3, v8}, Lcom/htc/calendar/utils/ByteString;->set(II)V

    .line 84
    add-int/lit8 v10, v3, 0x1

    const/4 v11, 0x2

    invoke-virtual {v9, v10, v11}, Lcom/htc/calendar/utils/ByteString;->delete(II)V

    .line 87
    add-int/lit8 v5, v5, -0x2

    goto :goto_3

    .line 77
    :cond_7
    const/4 v4, 0x0

    goto :goto_4

    .line 92
    .end local v0           #b:B
    .end local v2           #hi:I
    .end local v3           #i:I
    .end local v5           #len:I
    .end local v7           #lo:I
    .end local v8           #newByte:I
    .end local v9           #s:Lcom/htc/calendar/utils/ByteString;
    :cond_8
    return-void
.end method

.method public static final encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "input"

    .prologue
    .line 158
    const-string v0, ""

    return-object v0
.end method

.method private static final hexDigit(I)I
    .locals 1
    .parameter "b"

    .prologue
    .line 95
    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 96
    add-int/lit8 v0, p0, -0x30

    .line 108
    :goto_0
    return v0

    .line 99
    :cond_0
    const/16 v0, 0x41

    if-gt v0, p0, :cond_1

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1

    .line 100
    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 104
    :cond_1
    const/16 v0, 0x61

    if-gt v0, p0, :cond_2

    const/16 v0, 0x66

    if-gt p0, v0, :cond_2

    .line 105
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 108
    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static final needsEncoding(Ljava/lang/String;)Z
    .locals 1
    .parameter "input"

    .prologue
    .line 162
    const/4 v0, 0x0

    return v0
.end method

.method public static final stripSoftLineBreaks(Ljava/util/ArrayList;II)I
    .locals 5
    .parameter
    .parameter "from"
    .parameter "to"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/calendar/utils/ByteString;",
            ">;II)I"
        }
    .end annotation

    .prologue
    .line 140
    .local p0, lines:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/calendar/utils/ByteString;>;"
    const/4 v1, 0x0

    .line 142
    .local v1, removed:I
    move v0, p1

    .local v0, i:I
    :goto_0
    add-int/lit8 v3, p2, -0x1

    if-ge v0, v3, :cond_1

    .line 143
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/calendar/utils/ByteString;

    .line 145
    .local v2, s:Lcom/htc/calendar/utils/ByteString;
    :goto_1
    sget-object v3, Lcom/htc/calendar/utils/QuotedPrintable;->SLB:Lcom/htc/calendar/utils/ByteString;

    invoke-virtual {v2, v3}, Lcom/htc/calendar/utils/ByteString;->endsWith(Lcom/htc/calendar/utils/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v3, p2, -0x1

    if-ge v0, v3, :cond_0

    .line 146
    invoke-virtual {v2}, Lcom/htc/calendar/utils/ByteString;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x3

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Lcom/htc/calendar/utils/ByteString;->delete(II)V

    .line 147
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/calendar/utils/ByteString;

    invoke-virtual {v2, v3}, Lcom/htc/calendar/utils/ByteString;->concat(Lcom/htc/calendar/utils/ByteString;)Lcom/htc/calendar/utils/ByteString;

    .line 148
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 149
    add-int/lit8 v1, v1, 0x1

    .line 150
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    .line 142
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 154
    .end local v2           #s:Lcom/htc/calendar/utils/ByteString;
    :cond_1
    return v1
.end method

.method private static final stripTrailingWhitespace(Lcom/htc/calendar/utils/ByteString;)V
    .locals 6
    .parameter "s"

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/htc/calendar/utils/ByteString;->length()I

    move-result v4

    const/4 v5, 0x2

    if-gt v4, v5, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    invoke-virtual {p0}, Lcom/htc/calendar/utils/ByteString;->length()I

    move-result v4

    add-int/lit8 v0, v4, -0x3

    .line 118
    .local v0, anchor:I
    move v3, v0

    .line 119
    .local v3, index:I
    const/4 v2, 0x0

    .line 121
    .local v2, count:I
    move v3, v0

    :goto_1
    if-ltz v3, :cond_2

    .line 122
    invoke-virtual {p0, v3}, Lcom/htc/calendar/utils/ByteString;->byteAt(I)B

    move-result v1

    .line 124
    .local v1, b:B
    const/16 v4, 0x20

    if-eq v1, v4, :cond_3

    const/16 v4, 0x9

    if-eq v1, v4, :cond_3

    .line 131
    .end local v1           #b:B
    :cond_2
    if-eqz v2, :cond_0

    .line 135
    sub-int v4, v0, v2

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4, v2}, Lcom/htc/calendar/utils/ByteString;->delete(II)V

    goto :goto_0

    .line 128
    .restart local v1       #b:B
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 121
    add-int/lit8 v3, v3, -0x1

    goto :goto_1
.end method
