.class final enum Lcom/htc/calendar/CalendarULog$eDATA_KEY_VALUE;
.super Ljava/lang/Enum;
.source "CalendarULog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/CalendarULog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "eDATA_KEY_VALUE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/calendar/CalendarULog$eDATA_KEY_VALUE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/calendar/CalendarULog$eDATA_KEY_VALUE;

.field public static final enum agenda:Lcom/htc/calendar/CalendarULog$eDATA_KEY_VALUE;

.field public static final enum day:Lcom/htc/calendar/CalendarULog$eDATA_KEY_VALUE;

.field public static final enum invite:Lcom/htc/calendar/CalendarULog$eDATA_KEY_VALUE;

.field public static final enum month:Lcom/htc/calendar/CalendarULog$eDATA_KEY_VALUE;

.field public static final enum week:Lcom/htc/calendar/CalendarULog$eDATA_KEY_VALUE;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 14
    new-instance v0, Lcom/htc/calendar/CalendarULog$eDATA_KEY_VALUE;

    const-string v1, "day"

    invoke-direct {v0, v1, v2}, Lcom/htc/calendar/CalendarULog$eDATA_KEY_VALUE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/calendar/CalendarULog$eDATA_KEY_VALUE;->day:Lcom/htc/calendar/CalendarULog$eDATA_KEY_VALUE;

    new-instance v0, Lcom/htc/calendar/CalendarULog$eDATA_KEY_VALUE;

    const-string v1, "week"

    invoke-direct {v0, v1, v3}, Lcom/htc/calendar/CalendarULog$eDATA_KEY_VALUE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/calendar/CalendarULog$eDATA_KEY_VALUE;->week:Lcom/htc/calendar/CalendarULog$eDATA_KEY_VALUE;

    new-instance v0, Lcom/htc/calendar/CalendarULog$eDATA_KEY_VALUE;

    const-string v1, "month"

    invoke-direct {v0, v1, v4}, Lcom/htc/calendar/CalendarULog$eDATA_KEY_VALUE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/calendar/CalendarULog$eDATA_KEY_VALUE;->month:Lcom/htc/calendar/CalendarULog$eDATA_KEY_VALUE;

    new-instance v0, Lcom/htc/calendar/CalendarULog$eDATA_KEY_VALUE;

    const-string v1, "agenda"

    invoke-direct {v0, v1, v5}, Lcom/htc/calendar/CalendarULog$eDATA_KEY_VALUE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/calendar/CalendarULog$eDATA_KEY_VALUE;->agenda:Lcom/htc/calendar/CalendarULog$eDATA_KEY_VALUE;

    new-instance v0, Lcom/htc/calendar/CalendarULog$eDATA_KEY_VALUE;

    const-string v1, "invite"

    invoke-direct {v0, v1, v6}, Lcom/htc/calendar/CalendarULog$eDATA_KEY_VALUE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/calendar/CalendarULog$eDATA_KEY_VALUE;->invite:Lcom/htc/calendar/CalendarULog$eDATA_KEY_VALUE;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/htc/calendar/CalendarULog$eDATA_KEY_VALUE;

    sget-object v1, Lcom/htc/calendar/CalendarULog$eDATA_KEY_VALUE;->day:Lcom/htc/calendar/CalendarULog$eDATA_KEY_VALUE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/calendar/CalendarULog$eDATA_KEY_VALUE;->week:Lcom/htc/calendar/CalendarULog$eDATA_KEY_VALUE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/calendar/CalendarULog$eDATA_KEY_VALUE;->month:Lcom/htc/calendar/CalendarULog$eDATA_KEY_VALUE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/calendar/CalendarULog$eDATA_KEY_VALUE;->agenda:Lcom/htc/calendar/CalendarULog$eDATA_KEY_VALUE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/calendar/CalendarULog$eDATA_KEY_VALUE;->invite:Lcom/htc/calendar/CalendarULog$eDATA_KEY_VALUE;

    aput-object v1, v0, v6

    sput-object v0, Lcom/htc/calendar/CalendarULog$eDATA_KEY_VALUE;->$VALUES:[Lcom/htc/calendar/CalendarULog$eDATA_KEY_VALUE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/calendar/CalendarULog$eDATA_KEY_VALUE;
    .locals 1
    .parameter "name"

    .prologue
    .line 14
    const-class v0, Lcom/htc/calendar/CalendarULog$eDATA_KEY_VALUE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/calendar/CalendarULog$eDATA_KEY_VALUE;

    return-object v0
.end method

.method public static values()[Lcom/htc/calendar/CalendarULog$eDATA_KEY_VALUE;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/htc/calendar/CalendarULog$eDATA_KEY_VALUE;->$VALUES:[Lcom/htc/calendar/CalendarULog$eDATA_KEY_VALUE;

    invoke-virtual {v0}, [Lcom/htc/calendar/CalendarULog$eDATA_KEY_VALUE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/calendar/CalendarULog$eDATA_KEY_VALUE;

    return-object v0
.end method
