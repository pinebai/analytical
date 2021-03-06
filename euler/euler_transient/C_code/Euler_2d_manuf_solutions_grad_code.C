rho_an = rho_0 + rho_x * sin(a_rhox * pi * x / L) + rho_y * cos(a_rhoy * pi * y / L) + rho_t * sin(a_rhot * pi * t / L);
p_an = p_0 + p_x * cos(a_px * pi * x / L) + p_y * sin(a_py * pi * y / L) + p_t * cos(a_pt * pi * t / L);
u_an = u_0 + u_x * sin(a_ux * pi * x / L) + u_y * cos(a_uy * pi * y / L) + u_t * cos(a_ut * pi * t / L);
v_an = v_0 + v_x * cos(a_vx * pi * x / L) + v_y * sin(a_vy * pi * y / L) + v_t * sin(a_vt * pi * t / L);
grad_rho_an[0] = rho_x * cos(a_rhox * pi * x / L) * a_rhox * pi / L;
grad_rho_an[1] = -rho_y * sin(a_rhoy * pi * y / L) * a_rhoy * pi / L;
grad_p_an[0] = -p_x * sin(a_px * pi * x / L) * a_px * pi / L;
grad_p_an[1] = p_y * cos(a_py * pi * y / L) * a_py * pi / L;
grad_u_an[0] = u_x * cos(a_ux * pi * x / L) * a_ux * pi / L;
grad_u_an[1] = -u_y * sin(a_uy * pi * y / L) * a_uy * pi / L;
grad_v_an[0] = -v_x * sin(a_vx * pi * x / L) * a_vx * pi / L;
grad_v_an[1] = v_y * cos(a_vy * pi * y / L) * a_vy * pi / L;
