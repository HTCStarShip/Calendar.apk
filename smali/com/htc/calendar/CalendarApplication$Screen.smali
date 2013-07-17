.class Lcom/htc/calendar/CalendarApplication$Screen;
.super Ljava/lang/Object;
.source "CalendarApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/CalendarApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Screen"
.end annotation


# instance fields
.field public id:I

.field public next:Lcom/htc/calendar/CalendarApplication$Screen;

.field public previous:Lcom/htc/calendar/CalendarApplication$Screen;


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Lcom/htc/calendar/CalendarApplication$Screen;->id:I

    .line 47
    iput-object p0, p0, Lcom/htc/calendar/CalendarApplication$Screen;->next:Lcom/htc/calendar/CalendarApplication$Screen;

    .line 48
    iput-object p0, p0, Lcom/htc/calendar/CalendarApplication$Screen;->previous:Lcom/htc/calendar/CalendarApplication$Screen;

    .line 49
    return-void
.end method


# virtual methods
.method public insert(Lcom/htc/calendar/CalendarApplication$Screen;)V
    .locals 1
    .parameter "node"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/calendar/CalendarApplication$Screen;->next:Lcom/htc/calendar/CalendarApplication$Screen;

    iput-object v0, p1, Lcom/htc/calendar/CalendarApplication$Screen;->next:Lcom/htc/calendar/CalendarApplication$Screen;

    .line 54
    iput-object p0, p1, Lcom/htc/calendar/CalendarApplication$Screen;->previous:Lcom/htc/calendar/CalendarApplication$Screen;

    .line 55
    iget-object v0, p0, Lcom/htc/calendar/CalendarApplication$Screen;->next:Lcom/htc/calendar/CalendarApplication$Screen;

    iput-object p1, v0, Lcom/htc/calendar/CalendarApplication$Screen;->previous:Lcom/htc/calendar/CalendarApplication$Screen;

    .line 56
    iput-object p1, p0, Lcom/htc/calendar/CalendarApplication$Screen;->next:Lcom/htc/calendar/CalendarApplication$Screen;

    .line 57
    return-void
.end method

.method public unlink()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/calendar/CalendarApplication$Screen;->next:Lcom/htc/calendar/CalendarApplication$Screen;

    iget-object v1, p0, Lcom/htc/calendar/CalendarApplication$Screen;->previous:Lcom/htc/calendar/CalendarApplication$Screen;

    iput-object v1, v0, Lcom/htc/calendar/CalendarApplication$Screen;->previous:Lcom/htc/calendar/CalendarApplication$Screen;

    .line 62
    iget-object v0, p0, Lcom/htc/calendar/CalendarApplication$Screen;->previous:Lcom/htc/calendar/CalendarApplication$Screen;

    iget-object v1, p0, Lcom/htc/calendar/CalendarApplication$Screen;->next:Lcom/htc/calendar/CalendarApplication$Screen;

    iput-object v1, v0, Lcom/htc/calendar/CalendarApplication$Screen;->next:Lcom/htc/calendar/CalendarApplication$Screen;

    .line 63
    return-void
.end method
