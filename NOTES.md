# On Qeng-Ho:
* We really want 6502/init/ and 6502/exit/ routes. Just to get a session going. API key or session ID should somehow be involved.
-- Init takes an API key and returns a session key or cookie, new cpu+ram. Exit takes an API key and (maybe) session key.
-- Hunchentoot will spawn a thread per session, any non init or exit methods should execute in that thread.
---- Wrap non init/exit API calls with timeouts/deadlines for safety. Plz don't DDoS my shit guys!
---- For now, use sbcl's wait-for and with-timeout. Generalize to trivial-timeout or bordeaux-threads/Madeira later.
-- Hunchentoot also allows us to tweak session expiry times with ```*session-max-time*```. Hooray!
* ST-JSON will be fine. Need to define write-json-element for CPU class and RAM.
-- Probably best to convert to JSOs and let st-json take it from there.

# On Pham-Nuwen:
* The eventual goal of this project is to enable running Nintendo games in the browser with nifty visualizations and the ability to stop the emulator, step instructions, disassemble, peek and poke, and generally see a bit about how the games work.
* No model has been decided on for how to do graphics and sound but it is planned for the CPUs to run on the server. It's "Emulators as a Service" after all. Graphics should run at a minimum of 30 FPS. Obviously, we can't just serialize RAM and the CPU and send them over the wire every 30th of a second. Keeping copies of the state clientside and Sending diffs to ram and cpu helps but then we have to worry about synchronization. Might as well look at Lamport papers and Vector Clocks. Starts looking like network game programming. Ugh. That said, these aren't concerns for Qeng-Ho. Get the 6502 emulator and REST API going, then fret about the rest. You'll find a way. Tilt at those windmills.
